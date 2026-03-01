Return-Path: <devicetree+bounces-269730-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id dAt2FktUpGn+dwUAu9opvQ
	(envelope-from <devicetree+bounces-269730-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 15:59:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7484A1D04ED
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 15:59:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C26E7300F1B8
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 14:59:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A65CA2D46B2;
	Sun,  1 Mar 2026 14:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y3RnUJc2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC9D19D071
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 14:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772377158; cv=none; b=Y5ayRXR9Sc6f9Rhk0xfqRmJhj7MSw5IOzwSXOXQ+wDB2V7XEnLkbKkY6LpMGdX11nLYrN2XBvsITU+WykBxGCy6I+SeGbxxZfA0xLXjuk7+ze2zYgraOpx9TzJjN3iPp0d7oO7E5fBPrD8HI6/5vhuOgJdJbstoRaaVu5z9DLOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772377158; c=relaxed/simple;
	bh=YXH7JWi8FT45vn1tmpkxCO/o8m18jtofrsWpHKnd4uo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rpeFncJWtQh/0lkLGaGiT7MhKfazHV25oKFkElEso1OcZxdxOtyN/wQFAVsdn7PtRF654Vv+1lD+dNX1gPcKSTofoy6frA1Nu21uCxLXtJQgKQCYrVEoXvpZ10KIMXf/QX068/jwN4oVYqrltoEus8XaobJlJrhKDmQFfdYJMWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y3RnUJc2; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-480706554beso42164745e9.1
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 06:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772377155; x=1772981955; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kvxfwv9YItCl98F/UgZP9Kytwk2UIr78C0lNmMRlKt8=;
        b=Y3RnUJc2HblXezqROyPL5R+Eg47GNkhDuPkHlYf0DRVEpPKCkQdhknG6YqmGRSKNrd
         j3FC0uoqjvmPc4CZJ4OiFiHXPcuNHLWwhXMnLOrKS3RRQbkJOUolqS3D2+m3hzLpanQv
         4+6NMKeodUDlSYUg04ArxgOkied0/7ciY9ZaSR2fYumcwqNdNIyVtuSUweCI4FkO5uCM
         FO2pi0D1ylztS9m+Nta321ei9rZeh4+InWM0BDyw3b7axws5YJt38gC0waHQzMWE9IaH
         Th4wxeAp9NDzHJwpQ4rE2xfLLSsvgjiuRuJiABkGeWQO/XDqZxRsJRYbRY9+5ou0/uB7
         E0Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772377155; x=1772981955;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kvxfwv9YItCl98F/UgZP9Kytwk2UIr78C0lNmMRlKt8=;
        b=TybekfIIqsAnpMTqWOMLz8oYIh7ODM5nwQXTkdThtu8TfETgmZRFwYrGH9bL9Hkc+k
         9MVGnQYsmIjD8kp7RfAErQVcju5XBhIZ5h4IgoQIb0Hvswfe+oOpWf4eM+kgOwjBr+/9
         6ZoSwaWENgqpzjbSb8VPJUn+Hx6GjAf+5bvtUBvdKU1lskAH6JSO46zpql+Dhq+TYQf+
         MJnH+1TVWBJDI3cGYnYhFgIFpPtCQu4894R+N4+Mn3ZF+/gCdzH4vrQ1nv8+6PyIhrL6
         SQquQwHFT4rP7TYWf5JDoWjeX6gDOhAEvC4w0ODRs9Si6snCiFmTA0tjlEEBwcEWFk2k
         eoCw==
X-Gm-Message-State: AOJu0YzZhruuumDhtfvcbCd0ikvIXFANY9peTVy8N0mB2IWul6dbwqoN
	kxcV411gRGwTP1CbKI7JzK2nU2l/7J1PWNPsR9022J7zR2WoRXYPQ4A/
X-Gm-Gg: ATEYQzyiuzm69RsnHWjnZMFqXE6cOwCGb4P7VtyD3Nxa6V5+3b6/mI3YCTbm85tQM9t
	MEB5ulsa1KF5YuClG82fledrpZX2TvVHPayPb0hAtsiEJBwHHUTN98vWbEW25o03qluUlWl4kQB
	PNz3szZx50OlSFmvHxaULE2T3YIEMLpDZTvVO0Y0e19AXhHb/whlAZ3qlDj/cBGPXmkH7qc0y1r
	vnJdIDsn8AeFuoFvYnSCl/dXW5/rMhDwfnpXUGFGYgsFcJEvkZ2K20wtX7QvZ6R/FT0IadqJASj
	TyaD0pKD0le1irJdRoJ92oKHgYK1gwMHtD+QXtP00grhHMqZZaVaMr6dk5uTnRi6rhy/QONk+AE
	tBLX8LjU2bhkaEDnZTKu0kKozWSyl8uIICTKVBBw/4tLjAUwDYx76i0B0wrh46jvWLxAGVR4+bX
	ukWlMhF3i0Q2njQdvlDar6
X-Received: by 2002:a05:600c:4e09:b0:483:a21:7744 with SMTP id 5b1f17b1804b1-483c9bc574cmr150778635e9.26.1772377155124;
        Sun, 01 Mar 2026 06:59:15 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a55:9af1::1002])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd7031f3sm309080845e9.6.2026.03.01.06.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 06:59:14 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: sashal@kernel.org
Cc: devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	jerrysteve1101@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	pbrobinson@gmail.com,
	stable@vger.kernel.org
Subject: Re: FAILED: Patch "arm64: dts: rockchip: Do not enable hdmi_sound node on Pinebook Pro" failed to apply to 5.10-stable tree
Date: Sun,  1 Mar 2026 22:59:05 +0800
Message-ID: <20260301145905.41164-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260301020101.1728010-1-sashal@kernel.org>
References: <20260301020101.1728010-1-sashal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-269730-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,manjaro.org,sntech.de,gmail.com,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7484A1D04ED
X-Rspamd-Action: no action

> The patch below does not apply to the 5.10-stable tree.
> If someone wants it applied there, or to any other stable or longterm
> tree, then please email the backport, including the original git commit
> id to <stable@vger.kernel.org>.
I have manually tested the commit b18247f9dab73 ("arm64: dts: rockchip: 
Do not enable hdmi_sound node on Pinebook Pro") and found that executing
`git cherry-pick b18247f9dab73` applies successfully on the linux-stable 
branches 5.10.251, 5.15.201, 6.1.164, 6.6.127, and 6.12.74. 

Could there be other reasons that cause the patch to fail to apply?

Best regards,
Jun Yan
> 
> Thanks,
> Sasha
> 
> ------------------ original commit in Linus's tree ------------------
> 
> >From b18247f9dab735c9c2d63823d28edc9011e7a1ad Mon Sep 17 00:00:00 2001
> From: Jun Yan <jerrysteve1101@gmail.com>
> Date: Fri, 16 Jan 2026 23:12:53 +0800
> Subject: [PATCH] arm64: dts: rockchip: Do not enable hdmi_sound node on
>  Pinebook Pro
> 
> Remove the redundant enabling of the hdmi_sound node in the Pinebook Pro
> board dts file, because the HDMI output is unused on this device. [1][2]
> 
> This change also eliminates the following kernel log warning, which is
> caused by the unenabled dependent node of hdmi_sound that ultimately
> results in the node's probe failure:
> 
>   platform hdmi-sound: deferred probe pending: asoc-simple-card: parse error
> 
> [1] https://files.pine64.org/doc/PinebookPro/pinebookpro_v2.1_mainboard_schematic.pdf
> [2] https://files.pine64.org/doc/PinebookPro/pinebookpro_schematic_v21a_20220419.pdf
> 
> Cc: stable@vger.kernel.org
> Fixes: 5a65505a69884 ("arm64: dts: rockchip: Add initial support for Pinebook Pro")
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> Link: https://patch.msgid.link/20260116151253.9223-1-jerrysteve1101@gmail.com
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> index eaaca08a76018..a6ac89567bafe 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -421,10 +421,6 @@ &gpu {
>  	status = "okay";
>  };
>  
> -&hdmi_sound {
> -	status = "okay";
> -};
> -
>  &i2c0 {
>  	clock-frequency = <400000>;
>  	i2c-scl-falling-time-ns = <4>;
> -- 
> 2.51.0





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip


