Return-Path: <devicetree+bounces-273552-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOcHBacksGk/ggIAu9opvQ
	(envelope-from <devicetree+bounces-273552-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:03:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A265C251416
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:03:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6C91B3077CFA
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 895B23A5454;
	Tue, 10 Mar 2026 13:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X+d26tgM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E28A3A3E79
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773149339; cv=none; b=cSJC3t+YL7pun+ov3e2yfGnZNR6rc4CBCkLZZjoomdIllvGf/gayzaTUmpADhJYNgJEq2rX6NtmfDp4KscuJTEGmqIq4M9kOfFDk50/bxUAChfQcSOd2+Q+IqNHXGxBzOjRtl8gHc+B3kspd3hdIm0A9UL3/WFyDDFv+MHeagEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773149339; c=relaxed/simple;
	bh=J57/mPKRwOo9qn0tAHuETceyB1b05xubtq6yJB6EKvc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=LH4q56e33AbSmJ2wemSdCWly7sN/9SQcJSRzRikNF+YPc1VWQ32Au/dHk1TxU1vhJjcbxV1SYjlWdKTgX56OoxjJ3m0I+cNkCJYQ4hGmdlmpPHkZX/DKoiOO26zyGQxlHpwKfs3ec8Md/XZ7CbfgXjlnVimqRLz2kdVdjdVr8LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X+d26tgM; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-439b73f4ab4so9464892f8f.1
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773149337; x=1773754137; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kwnFJQqlKWEXzUvlalVGhjezujVxDbx4tRppwkLuzVI=;
        b=X+d26tgMK/beYlVp97z019wlGkeDOUK65QrKhVx3RYYqZW29eTXlIeZzoL7bvoiTKz
         CB8WBZq6jkMOEw5x1/Dh/q8lKDD/ClSyTcYCNhyixrOkrd50SRszhkvKToFmTEdjTqkp
         TpAbZ7l4qIJmCMoL/d0FN3c9JrPRJ3ZBvb6pOJZLyLgNDeN9A8dX6XdJXEkOPhy6Az3w
         mnAXpLBW5bQo9Rfhw9qgY2RMpVaf1zlbqseO7WuY2/ybGb28pNVdPCro0bCk9ZZeXVGO
         V6D68IwqgdDUhcAix+t2SsNPcHMMnjrTh5tQVDJJebDhuH95LgaphFtc1madBwrI7GqO
         qfDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773149337; x=1773754137;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kwnFJQqlKWEXzUvlalVGhjezujVxDbx4tRppwkLuzVI=;
        b=HaW8dUj4jWyBHYCWrPGDgM6e1cbdK+ScNFotwWcbFLCMnXNVX7cauM+KkSRVZC6/Ub
         EB5xtBq1FstCMJsHfdYUsiv6c8qHjr3YePbV3yBjxOmNce0ssUMNo6SaxgI5XEe4i4k6
         oAOVIjGR7w75T8einHvfq5OXc1y/keZjHtCILq7QjikolIwd5Phpb1yPYvmt6lljzodm
         32va7liU6eLh0ui9B12d8qmCh/XVq9b7ImwqDXLVuuaiLF21/lHKkYqt1lK+46eTfD7T
         Ov7fesmwtSInUovVy1dz8P5eyCUEtcCboWKyLwPvC5lbBte8P6flSo5I8g38ngvP4qjd
         Ckcw==
X-Forwarded-Encrypted: i=1; AJvYcCU7Ms++9l4W8NhkgjIYzMLoh21nrWPwIWuiTcpBjy8X/f0xLmKhMX5pkoXRJWfDY/kb+EsJnZHysWUc@vger.kernel.org
X-Gm-Message-State: AOJu0YzQh0MDQZXptICACI4voYD8MEAdmr0eY2kbZw6rkScWXt6cKeRw
	crtVh3M0Q1F7FG1WggLHvfO35v7PlQEpkwCDoGc/+zNChNY/eQr+Bqmju4JZzt+Q/w9pyQ5Uz6x
	7Oo1m
X-Gm-Gg: ATEYQzzkPU75BOMUwsvWscLb23YfJAImwEYRgPai5emHqC8P3XM7ofBy++H5jb0PXdo
	fXrZsdTqgsydvS/Vjrv+sAWj0ZJ2/axkG/deQxlDipi6R4NhBce9oEoIqu54FWwYTJ/7MUZUYBu
	nDoUs4+hL0U6h1wNUI+3ZaZyKEtYAxKmNoqoe0659su78sbyIdMg7CozTtcf6YXdC7gkFzHuRdm
	DUqmimcTnWeDIbgwDRRlnDRx62qW1xNLf+BhRRneWLBshbEGvIzsXLLkVpsycIrTIbSA7sPOeNu
	PEnFUnzWt9LAmijrqOWIxr3Zw02Oxy7vYtAWgQ9bOKDe4AnTNprP+dqvPMsW8o1JT8/iWBdCHD4
	3KI0D6P1NJYJzMXmuJxwCS/lsgXnyYyt/sPzNjk3vIyu4Fl1ijKENMXTQbtht4nUVpU3FfbVV9P
	lok9T6o6pe43ODi81CmifP9j9p1LoNqOn5ontyec5AyA6k/Ojy8N5huzM=
X-Received: by 2002:a05:600c:3b17:b0:477:76bf:e1fb with SMTP id 5b1f17b1804b1-485269587bbmr240118075e9.16.1773149336512;
        Tue, 10 Mar 2026 06:28:56 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6e6sm132464235e9.10.2026.03.10.06.28.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:28:56 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
 tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, heiko@sntech.de, mani@kernel.org, 
 prabhakar.mahadev-lad.rj@bp.renesas.com, dev@kael-k.io, 
 kever.yang@rock-chips.com, 
 Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, dianders@chromium.org
In-Reply-To: <20260214085409.3489057-1-yelangyan@huaqin.corp-partner.google.com>
References: <20260214085409.3489057-1-yelangyan@huaqin.corp-partner.google.com>
Subject: Re: [PATCH v3 0/3] support for taiguan-xti05101-01a MIPI-DSI panel
Message-Id: <177314933582.2052605.5151968793988943293.b4-ty@linaro.org>
Date: Tue, 10 Mar 2026 14:28:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: A265C251416
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273552-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Action: no action

Hi,

On Sat, 14 Feb 2026 16:54:06 +0800, Langyan Ye wrote:
> The panel uses the Jadard JD9365DA-H3 display controller, which is already
> supported by the existing panel driver. This series introduces a new
> vendor prefix, adds the corresponding devicetree compatible, and extends
> the panel driver to support this specific panel variant.
> 
> Changes in v3:
> - Use vendor prefix "taiguanck" to match the verifiable company domain
>   as requested during review.
> - Link to v2: https://lore.kernel.org/all/20260213071946.1436852-1-yelangyan@huaqin.corp-partner.google.com/
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/3] dt-bindings: vendor: add taiguanck
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/65fb1ca580461a4fb4529a22b0d6f50c13e4c3cc
[2/3] dt-bindings: display: panel: Add compatible for TAIGUAN XTI05101-01A
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/75a703c6810fa566e5a64dc0c3e45d2d891307e2
[3/3] drm/panel: panel-jadard-jd9365da-h3: support for taiguan-xti05101-01a MIPI-DSI panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/5c19c4ed5ae45553380afa6de7cd17d4e5bef827

-- 
Neil


