Return-Path: <devicetree+bounces-301186-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDmiAljfDmoVCwYAu9opvQ
	(envelope-from <devicetree+bounces-301186-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 12:32:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0465C5A35CD
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 12:32:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8688F3038050
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 10:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44A45381B17;
	Thu, 21 May 2026 10:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bcxGKWTT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C4D3955C4
	for <devicetree@vger.kernel.org>; Thu, 21 May 2026 10:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779358726; cv=none; b=gxnl+B37TDL0fMurDwm5WnPvgCJNqkXyMUeoZzNgukr674a0GyPNIcl5J7UE1DVRShaMRDZ5eI/BH3nqFD3jgbCv12nWytbnpJYTAhhmBgZzjz9dHLf36yaXCzAxAThL6tjU+c2RfsP4XfXjPhQqcxnwptvxj+GVFcsNTcG0u8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779358726; c=relaxed/simple;
	bh=2bYB1xx2/Hr8LzyFvSIy2n94i1GOiw43zEZhsMOD62E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=X/+r5alshEkcxYK8chQeZ3cp2htsJSpdBsmEd+BMAXdohcJADX52qI5DxCSB+LMHzfMvDLrhQcq1Grx1/hfSLeq5e/fzeeE6EfhJ0CuTMNCxp51uY8sRqPOPiZBrOkYWdwk30yFM72QlQ1roy0T6v3qTs8GLoclIhGr1lQH6dU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bcxGKWTT; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-444826c16ffso5316697f8f.1
        for <devicetree@vger.kernel.org>; Thu, 21 May 2026 03:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779358723; x=1779963523; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a+yLXkw2GT7LxR1Ajc513/uXxkuEC8xR05slvUKTHbU=;
        b=bcxGKWTTzDecx1ijUCLdtQw/kQzh4YWHU45UM43PloiV13NL/ewrsv01AHpn+KquO9
         D5V9uZF/IYoAi/RMDnB9T0wSk8thQnxDK0xlm9ucRqjYR7a9DLr+l9lH54mC5is0jIgM
         +gmbtg87OMh5dUm56CK1JChECZwojAytTZiP31jDkw+SXWSwt5bPq4NlrTlCqU4po6bt
         fF5IYYAwR8WG8GV2N7O32vMygifDi3N9DrMGDfkiC8uACnC/l6ddOrfePn4TDslW/kCz
         9HfC9GfiAQ0UlGE5DMFNvnZtnZxIcGJkgNxqFDk5MvrjeLuI5B5Zf6Z+2VPMpTiXcZuR
         4xiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779358723; x=1779963523;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a+yLXkw2GT7LxR1Ajc513/uXxkuEC8xR05slvUKTHbU=;
        b=Ftr2QJZYr4GcVmd1hfl7siw9IB59ZilXnM8OE+F1NQ0neey36fkZVqmyrhnpDgPdHl
         rWaXns4kHptMOYPO7AEHgkTKaOnXug2sN1g1AhBBeDGxUeG51kqUBdEV/zH2ToFdIGa5
         J3TiMSU/MEGSlVHJwKSzSEN3Rvf8FULMmtkpCtVxYSd1Zyz0Ao5xerV7RkEqpooOcZaa
         F5gW6Nc4wBKrlmVoddKS88JxH86eF2p7mWyQ8pKBPbf0mnjdDCR8aEDQ3AC75lhbguN/
         0YLNA4pHoUnHsOMHWPaabtXzzLU4mXkpaJPDJyttqL0xXJLLT/K0YCDiV332OjLGNtf0
         X+yg==
X-Forwarded-Encrypted: i=1; AFNElJ9o++NPhiDaBCuUmtto7lCJ2ZoyIZW0LhWrxiPE0lWf+uM6vYtvyV+WDhZAvGN2th+SEpwdF9VVna8j@vger.kernel.org
X-Gm-Message-State: AOJu0YyBrfs9UbLJGfmzdEHZB5YwME4+PscY+gYG1VkYOqs3BJSUIS0n
	XJyz92YSrxk4fG45CjwWxxw0VW4C+2mWfgpdyyXjF0JTHvNSyPsPwAc/
X-Gm-Gg: Acq92OEz8NGzjb2Rx/q1VGZ8ce/vv5VXm8qDRcKbG7+voLHoteUYp7bwRAwiZOfjKia
	4L8WL28YdATe+AMG5fardGlnoGLkQ5PXCkSMwDBtfFCdlw4WM2LMr1ky4JyXt/BHxvbJa5sV9OR
	+AWEO7MiDrMcXLmEZ07bVGSxFeQc1Vspl8VksauMmT3GVGKTf7l5B/2Pa6cfZMZdG2Jl5y19W5S
	FQXdgHZlyQqV4sEXPER9yj9HWnLdQtCT5BdXzTs9QMdsC+9ClY82q/WJKHxx1onelokYWvTlYMB
	XX85Hh6nkrncLLcqeb1sxIcAjEOEmHr8r+t+LnHIDIPiT8Qby2lwW+rFnsn6PL+UiB8NGWSulAl
	uhtbEXOzO3qbTjBaoWSuL0utKDY4fCAAQyGzgQLaOnwzY7NHL1n/ZRAtdMMD3Nz0aaLGTMmH+z1
	u3R2EZRQsgP1mTBDK2IcEujmBTNEYFTUMjRtd5qzqCkknXoJPaOk9YqfsHy/U9t9zlOLBHfe5Kd
	GXKJGHvUQrXr5fr/05hgl40Y4prxLHXcJORKjOtQeJrYTL3zLUk8647qlCsxQcmIVmqDltv0Bhp
	IFTNXW2V+A==
X-Received: by 2002:a05:6000:4284:b0:43d:dd:8ca4 with SMTP id ffacd0b85a97d-45ea36b88ebmr3980111f8f.14.1779358722497;
        Thu, 21 May 2026 03:18:42 -0700 (PDT)
Received: from franzs-nb (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45eaa7d9daasm1980702f8f.11.2026.05.21.03.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 03:18:42 -0700 (PDT)
Date: Thu, 21 May 2026 12:18:41 +0200
From: Franz Schnyder <fra.schnyder@gmail.com>
To: Frank.Li@nxp.com, sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, 
	conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/3] arm64: dts: freescale: add Aquila iMX95 support
Message-ID: <3pcmepn2kr2b2gku33mriosmnim4xd7e75pt2j7i7vnt4awhgg@3cptbxl5u4x5>
References: <20260521-add-aquila-imx95-v3-2-621843807def@toradex.com>
 <20260521093854.14DAB1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260521093854.14DAB1F000E9@smtp.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301186-lists,devicetree=lfdr.de];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fraschnyder@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 0465C5A35CD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> > diff --git a/arch/arm64/boot/dts/freescale/imx95-aquila-dev.dts b/arch/arm64/boot/dts/freescale/imx95-aquila-dev.dts
> > new file mode 100644
> > index 0000000000000..bb4a3631af9ba
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/freescale/imx95-aquila-dev.dts
> 
> [ ... ]
> 
> > +/* Aquila I2S_1 */
> > +&sai2 {
> > +	status = "okay";
> > +};
> > +
> > +&som_dsi2dp_bridge {
> > +	status = "okay";
> > +};
> 
> [Severity: Medium]
> Will this bridge fail to probe since the DSI input connection is missing?
> 
> Looking at the ti-sn65dsi86 driver in ti_sn_bridge_parse_dsi_host(), it uses
> of_graph_get_remote_node(np, 0, 0) and unconditionally returns -ENODEV if the
> remote node is missing.
> 
> Since the upstream i.MX95 SoC DSI controller doesn't appear to be implemented
> and linked to the dsi2dp_in endpoint yet, should this node remain disabled
> until the controller is available?
> -- 
> Sashiko AI review · https://sashiko.dev/#/patchset/20260521-add-aquila-imx95-v3-0-621843807def@toradex.com?part=2

Hi Frank,

This is valid point from the bot.
If there is nothing else, I'll send a v4 that removes '&som_dsi2dp_bridge' 
from the Dev and Clover board, since the node is disabled in the SoM dtsi.

Thanks,

Franz



