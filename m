Return-Path: <devicetree+bounces-324531-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JYozBLYQUWq1+wIAu9opvQ
	(envelope-from <devicetree+bounces-324531-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 17:33:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B25E73C491
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 17:33:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=gBjhuiao;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324531-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-324531-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5473F3021758
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 15:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C57042DA29;
	Fri, 10 Jul 2026 15:32:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63E942B324
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 15:32:38 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783697560; cv=pass; b=YBFAi0F6C5kWvviCXPPVhf4r5Hofq3PDAHgyWx4QfVNDhZh2wqc5nAbuGLYEtLk0B05iVnVQ3ld70+ldFFtBAYy9eBH7R2EGbuQhr0FEDlqFmsEWcwRjbFjk8ev1VquuuOAXBOVSuqqJf5mPUdlF0TzgnYfxmyZSrYIvfyNTG1s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783697560; c=relaxed/simple;
	bh=LD/HoXawwSiJkE0tqPWy8TxRHVZpMFV44E98okcn0uQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iRSG/1K5drnfaHjfPvuKDv8XFDnt+GDJE3w1BIx90K4ah6nPQ6HpAcvKzJE75yyFYAJqJ/rQx1bN3AYz70QWNXZL8Nu8/cqnFjurfqrmddH9fYuohhNrYd+YVKbRgxhxg0a4i7ZTI159B4S6NTqo2cMV5/XijuzP99OJeTYlpn0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gBjhuiao; arc=pass smtp.client-ip=209.85.214.181
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2caed617615so10196435ad.3
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 08:32:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783697558; cv=none;
        d=google.com; s=arc-20260327;
        b=fCAbzW1f4SkhaHoFXsRt5mqkceL6shs5lF3MTuHTS6hb/1ZkHkx4tiy9duYtFAXHzq
         miY9Q6zWScZMBohKUjNrYO4KFh1rmhenOILaCZ3RbGNt2qIBzJKAvYthK6gcIa6JgUE0
         2NMboOlaLDLSM8bHCp8soFL6umvpsnLRxCUh4hTtCLQW6mzEa89GpwUPon7SYpst2AWg
         Pc+9DWgy1Te1YkXTftQqfy6cf49jIuXCG7VwNasDxUXw3k2AHjlF5h3dOgYDLTjhaZf8
         uUy0KgL8lauz0qazk9iPQuHf//JAUne62CAa8WXmjv86CWfGEniKn5GlBVBVh1qQIxlE
         b7mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LD/HoXawwSiJkE0tqPWy8TxRHVZpMFV44E98okcn0uQ=;
        fh=wRwhTPIbA8DCQKPwHnsUpb8WV9asFgMvneXJPDzk1kw=;
        b=D2LBzPosAOt4G0jZ97wnh3yZDI5rrJswqhg3DjwMEtv55INkTS/3PHCBLcD+NWnpAB
         qJjzD+yrjjzgYhwqHYd3YscR9wNpgWfZA6oUQbagsQ2YYVlWsZw/h3y6ZNaDL5nJFntz
         5K/HxA1RsIzSLgZ9nCRrYAXhexAOTaoDgpFlVuVjX8+1JHALmH493n1k8+bbBV9sMcYR
         Fa9ynFJ2+rXZYAW/aXQ2hybfXsKPD+TDyMqhuj6BWLONHR75LZdW0bOcVopgoM3uSIy+
         O1++bHI3W3yH2z4OPi2+7BScYsD9k6vn2yx5MVkJvOJv57S/YUXD9CE0ZYe//UBvqrse
         rwPw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783697558; x=1784302358; darn=vger.kernel.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LD/HoXawwSiJkE0tqPWy8TxRHVZpMFV44E98okcn0uQ=;
        b=gBjhuiao85kliPAtWQRZSCYeQP/QIcQCfg74Ce5nA+jM8MI+iAw4QWWHj6PCwBoF01
         +lJu4uWa/pdnqC93qyB/5GEbYX16Mi2QsIQ90xt6WyWyCqT4Un5yK8lQZXXplXOnnsV0
         X1QmrJ1RWHY5UwzASYmfFBSU2XN6gZ0TXRT0aM7VWBW3/ivwRBpXU+i4OiRyLXCFVk9B
         qwk7Lmez1FEdADtTNGJSZWb7HPuPHYqes8tmRHXvUAtkm9mHzQeLXZMbNm6bJRJN6BoX
         OBdUFoonxtbs8VPMDjoKZav2Oajmhaw7i1xqBS0Np6+EfFE0kja/PMkjY13F0mePoFKV
         D/Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783697558; x=1784302358;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=LD/HoXawwSiJkE0tqPWy8TxRHVZpMFV44E98okcn0uQ=;
        b=LA/KVCFr251vx0p9WBwBRxRJWKqTE2unS18QXNNcnYNPM7g/4Miv2nQy1XddUFFMgC
         Z4qlYoKL+hhwybdX+EqZEKKeCQX983vxfS1pachgbav7CXiaGj8m7mEuVmUH/Nl5/msV
         nJ5asI4mZCVsswHKkUV2EV+uGNqfyQLfpe60FZeFgKadcmmKC+x/uB/Au+aFCd5frr4A
         oCqmhdZ/zQXMeUTNznk/NhStYgqjdgq2+gVLTcZfamoL2GvbUk+vmIwDCy1q/0c9Crjz
         joKDL/kR5SEEpIVLSmgtxrfL4jU93JUC0EwUi3R91yMZ89BBmJEMxiGdQTqVlQC7bD3W
         TGOA==
X-Forwarded-Encrypted: i=1; AHgh+RqrWoEJAPTUCLQNaOWlq9Q/YXd1mkelTYxh7C00kRHwtNLnmiPzKaQkxRJy98XN+DvBfllhrRIPnieB@vger.kernel.org
X-Gm-Message-State: AOJu0YwDLFY/JfASgzT0Q1MFGor+d6DE0N7JiUV4I3V3FaK+WmweDAjG
	cJ8tl6M3C92FlVjwF+7zeQ8hPMViJOKElKzcLIQxYYuDoPAJENIucSPOhmhdYsvMXufn1aaRmKV
	idiG9epsi291Sh3KN5kTuI8Q4dqD4AGM=
X-Gm-Gg: AfdE7ckEuEx5gvF7p37DkK2QLAZ+K662ZbZmV2q0UOlLkSOp4A+1LnFn1JZtMOQ1K1Y
	vCOjncu/ETx1gHXjG8xJjJuUMYS+9UgO2VHIOFTcY1bTws/q65VyNcR2aPNHHJYtIy3EEjFHvny
	BzfDG10b1cY6nu/MvKiz3383zhN7fhHjRwGnWAUzcG7xzaAGP95P2w4BDKnjk7Hk2IzmDxbXsMJ
	J3iX4A5F38pJWhqoG9FNfOZ0/dSTqnz4SURF1sABF50bJVNuJ+GALC+AzyCpDgsOxPoH4L6W1Te
	hKpGsH3TQbFuL6m3jgH8E2qOvxmFzLTwfUAokzTFTWa0iZZDIMggTepYdSpB
X-Received: by 2002:a17:90b:2ccd:b0:37f:9ce0:af31 with SMTP id
 98e67ed59e1d1-38941ad2a55mr12198944a91.28.1783697558119; Fri, 10 Jul 2026
 08:32:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260707014525.1015-1-kimjinseob88@gmail.com> <20260707014525.1015-6-kimjinseob88@gmail.com>
 <20260708022006.4276fc99@jic23-huawei>
In-Reply-To: <20260708022006.4276fc99@jic23-huawei>
From: Kim Jinseob <kimjinseob88@gmail.com>
Date: Sat, 11 Jul 2026 00:32:25 +0900
X-Gm-Features: AUfX_myFYIBykcPPdf8s5JAjoOTFSzN_9Jogzi0T4pIoiCbRwRR3MlGuA2VyJNw
Message-ID: <CALMSewLT_FM33VqeDtcReZt03nmRrs1R_a_6dTVPXMiFfbWJ4A@mail.gmail.com>
Subject: Re: [PATCH v7 5/5] iio: osf: add UART IIO driver
To: Jonathan Cameron <jic23@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Nuno Sa <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Jonathan Corbet <corbet@lwn.net>, 
	Shuah Khan <skhan@linuxfoundation.org>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324531-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:andriy.shevchenko@intel.com,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[kimjinseob88@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kimjinseob88@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9B25E73C491

> This is only defined in this patch but is used in patch 4. Make sure your
> code builds after each patch so as to avoid breaking code bisection.

I changed patch 4 in my local next revision so that the stream parser no
longer depends on osf_core.h or osf_core_receive_frame().

The stream parser now accepts a typed frame handler and an opaque context.
Patch 5 provides the wrapper that calls osf_core_receive_frame().

I compiled the sources introduced by patches 3 and 4 separately using
temporary uncommitted Kbuild harnesses, and built and linked the
complete module after patch 5.

> This feels like going too far to deduplicate just this. Put a copy inline
> in each of the other macros where it is used and drop this one.

I removed OSF_SCAN_TYPE_S32 and placed the scan_type initializer
directly in both channel macros.

> Looking at this again, why do we care about holding the device
> in buffered mode for this? Races should be safe without that
> big hammer. A simple check on iio_buffer_enabled() should ensure
> data is only pushed when it is enabled, or just after it is disabled
> (which should always be safe).

I replaced the buffer-mode claim and release with an iio_buffer_enabled() check.

The one-axis and three-axis cases now return directly from
iio_push_to_buffers_with_ts(), and the default case directly returns
-EPROTO. The zero-initialized scan structures and aligned timestamps
are unchanged.

Thanks,

Jinseob

