Return-Path: <devicetree+bounces-266441-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJ7gK8m/lWkfUgIAu9opvQ
	(envelope-from <devicetree+bounces-266441-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:34:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EF0156B8B
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:34:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 38B9030078D5
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 13:32:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DC5731ED7C;
	Wed, 18 Feb 2026 13:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y1rqW9D1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211CF28C035
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 13:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771421547; cv=none; b=XH3CMIwAwz6yAww/f01LSSI2Yj78ARTZlf7lzozDARoewrudlcWLBfbMcrAo/2pAENuh2sCycvbMXTM3XwjaYQfUE3o74ug3CY0vUloR5JUq9Vjeq9lzXz9ndS/ZEnre2NK2JPZICIrRhHaB74KOnxtZBSlCOr7wSnXMGtyS8sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771421547; c=relaxed/simple;
	bh=OjsOVKKkecxrDuJK35sJC8GLlFfWYkzW0WWUdrjxNms=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=V77KIq6u6kRAkX+xdumGlrD1ItDu5LbB4Wtsq91sCnevTbOxYL3y7SxaIYr8A9C7ae+DQDFss3xqkjcPOj56H/xXqeXAgdsaIZjIq5111wf5ctMnszxRbELJd7eaNGFfK22hEaUvKRR3DTjca+ttplGN8vRJurhOp4pMlCmrdAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y1rqW9D1; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-48068127f00so56776575e9.3
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 05:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771421544; x=1772026344; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=03+WHqXS0uXZVxR2wEZ9W9ki9OCzcDYn5L0WMe95atw=;
        b=Y1rqW9D1496cF5ypCs7cp/iINy4GKv063cXMo7vkTbIAxOKlOuM7kLztJEFpzxazGR
         Ik2YQ4panmveG4YoS/qy65PscJsNNtucDv++mwhaWYYHiJMFSE+oXtY/jCzuWn16SuWe
         UFH2Mk+71wMJFctN5W3/z82GrC9cTtw1f9D4mXDQnF38v4CqnWl6AVIAGgdZ0F7+xIR4
         yrpoWTwIJTnTlVpd+PHBQYoXslzql2slqk+KiRW3BpdEV2bEwsRFUwkwDD51mOdm33AZ
         ya9lDC5RBLYw5EWlTkgL+znGRvZvIsv7KPgy9DmZcwGHTF1OnMy8Yn/HOOhAG0Hb3YxS
         8/lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771421544; x=1772026344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=03+WHqXS0uXZVxR2wEZ9W9ki9OCzcDYn5L0WMe95atw=;
        b=CNXD7+4u3iyWlmCyBDaCe82kSmurTHUSsxsAvgjIkJ61FqfnPXyZLJJD3U4qSp+4DZ
         nb3yVfzTRdyPz0AOOUiZaihIB5P0etOQKDu844CcuCiwxiDXopVvGuI1zccx4EmdZurW
         H/mRoKeRizuVuoKsJDn48QJ8xWk2SBEsF8riv0cv9KB0viVCLLBHFXgPSA+Sf/0SrOz4
         vsjFCro2Cic6S/xhatd7JSoc3m40Ep+O5E76O0FthJ8i3IeP2Ec1MRaI/LfZ5Xu90RcL
         xcVygsY2hNfi1S61PmZlZXSb8iSDYbo5AS4gBIa8U7Ocfp571HYM9SScAMDp3WX3TFS5
         BE0Q==
X-Forwarded-Encrypted: i=1; AJvYcCW4aE82NanWjKrnNykZT/MWh+37vk/vxsLwtkWUxYke4LAOpfP1hTlRt2IhqOvFS3Vg7joPKFHLSzv4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+DhreVY+fzW8tDYhI9W+Cmaasy3RGaceml1v+nVQ8sNWFaG8C
	QCucfdeROy1T/q6FzffMKYP824t6OfBeyy4JiF0NkMyWo6NNlfbHyhH9sIWF6+5h
X-Gm-Gg: AZuq6aIDQl5X22Bxuh7T6aT1M+SJ70zNjO0i/1o3XQE0WCeZ5vzKDxDDwUHxzMDiVjW
	BRX7FoN+prAS4atfQZkFTZCsFvuh9g5oued4WDuNn5rwmH667nnuAsZRnU3WWu8Lt3LGtzWrR4q
	o6fRf2zHLIhCI8YVBo54ejmlEx0Hgoyh4pUkelcR5s4ppfO68hmt7+nd3csVKj2AOKxWC0dYukH
	GzpnubD9qZXniKyeyyVVy0bZoC4qXIA4FGTyL4qPmq0/h3LUYj4x7FagFs71NJedpcQUnPgWp9P
	B6qb2bR0YWQLRkmCZWuL13TUS77NZskYm5BcjNoziDV60I05i0iaIIvqzUPrTp670/o1xuLpWs6
	nr4zfvzgCJXuAn6gBEqWXY8wqWe4OPg9/Xm2zfqhAQGZbI1xdhBWmg0A7EVwErYojjS5bGccTRh
	rYKKOAsfCtckSZbJBqAeVKAeNqB3g34mKNdbVdvw77kwV7MV8u
X-Received: by 2002:a05:600c:c4a5:b0:480:699c:abe9 with SMTP id 5b1f17b1804b1-48398b879c4mr30727945e9.37.1771421544245;
        Wed, 18 Feb 2026 05:32:24 -0800 (PST)
Received: from fedora (89-139-55-36.bb.netvision.net.il. [89.139.55.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a74918sm41939520f8f.17.2026.02.18.05.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 05:32:23 -0800 (PST)
From: Yedaya Katsman <yedaya.ka@gmail.com>
To: val@packett.cool
Cc: andersson@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	lumag@kernel.org,
	marijn.suijten@somainline.org,
	phone-devel@vger.kernel.org,
	robh@kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Yedaya Katsman <yedaya.ka@gmail.com>
Subject: Re: [PATCH 6/6] arm64: dts: qcom: sm6125: Add missing MDSS core reset
Date: Wed, 18 Feb 2026 15:31:18 +0200
Message-ID: <20260218133117.1584696-2-yedaya.ka@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260216233600.13098-8-val@packett.cool>
References: <20260216233600.13098-8-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-266441-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,somainline.org,lists.sr.ht,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yedayaka@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 14EF0156B8B
X-Rspamd-Action: no action

On Mon, 16 Feb 2026 20:25:24 -0300, Val Packett wrote:
> To make sure the display subsystem starts in a predictable state, we
> need to reset it. On closely related SoC (sm6115) this has caused
> DSI displays to not work.
> 
> Wire up the reset to fix.
> 
> Fixes: 0865d23a0226 ("arm64: dts: qcom: sm6125: Add display hardware nodes")
> Signed-off-by: Val Packett <val@packett.cool>
> ---
>  arch/arm64/boot/dts/qcom/sm6125.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
Tested-By: Yedaya Katsman <yedaya.ka@gmail.com>

This makes a panel driver I'm testing work more reliably, right after boot
instead of some random time later.

Regards, Yedaya

