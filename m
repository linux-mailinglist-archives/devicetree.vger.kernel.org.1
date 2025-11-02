Return-Path: <devicetree+bounces-234108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F62C28DB7
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 11:59:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7846C3412DD
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 10:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8049E1F03D7;
	Sun,  2 Nov 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="Gu12e4Ry";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="yKvYyrFg";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="ic5hceXH";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="zjJLpUZo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DAF21D5BC
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 10:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762081133; cv=none; b=ebsOm1yEPQy/4TorGXGddzzJkvnYxuWEWXTB/VD7YRN4DFnKeMMPU3fIONb7Vog0PyRhbRJizbaaRzLa+E4rH6VgBCtNyMnAvmD3BuQ3TUPIIzJfv82te39nEnBJzG+mMN4PGsgbytbzFboZhrCi9874tp6uQfuRJTp1TfPFaSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762081133; c=relaxed/simple;
	bh=gSuV9NfvZsiBv2LChBXloeoHlZVcMPF3yM2Mnt7Odps=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BrlDoMRgeNWQXF76KGVgLis37bs3v5VzVrBhkyE6+0jZDbETAm+sfZtk9tnnbBB19v3z8E2yvjWPfl5vNRFjj72lJBvmX0pjSV838n2zH+lvX2GWBYQ5y8c4593jIc+/phYxuCIwzuouukLt3Vx/cxtLYruqZ+ZKHneipcHSsLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de; spf=pass smtp.mailfrom=suse.de; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=Gu12e4Ry; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=yKvYyrFg; dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b=ic5hceXH; dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b=zjJLpUZo; arc=none smtp.client-ip=195.135.223.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=suse.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.de
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id E3C63219A1;
	Sun,  2 Nov 2025 10:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1762081129; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ygryKpuel8gUruAmxT7tunoXHxgWnszjIWDtcSkyXgY=;
	b=Gu12e4Ry+Pcag5JF+IO8aXX0WuYRrmk4kvzlTuUPMwqAOzrnEVqOsREWVgL7TBQq/Or2nT
	GfPMN5WI7kzzxAzZgyrmPDgaLF3AyU7eWvntl1gvg8pPt38M9jgbQWqmtyXcKlvic2oRGz
	RScb1UQJx/9v4isNnYjnwAmj84wzyzo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1762081129;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ygryKpuel8gUruAmxT7tunoXHxgWnszjIWDtcSkyXgY=;
	b=yKvYyrFg2dtifnKDrHvMlNargw9E7uCo1QCOApxR594EQZBnFmCuyNSgJ+vmJqm6XG62qh
	EsSa6mULWxS5+/DQ==
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=ic5hceXH;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=zjJLpUZo
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1762081127; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ygryKpuel8gUruAmxT7tunoXHxgWnszjIWDtcSkyXgY=;
	b=ic5hceXH/0ta/+C0Tq1Dk9YbRtNQDvlHSmqog+Dxux6lRa/0SjWPhjSn4/Nphi+rTWTois
	8AwTWk+MGFzMD24e5AGOkPvPagBWPf3fPHtYGv4/cAmwP0FU5ixsdXq/7/cz7c4AmOfa8D
	YMrrmLIjmld/UAxIOL0xP09tIuQRxuU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1762081127;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ygryKpuel8gUruAmxT7tunoXHxgWnszjIWDtcSkyXgY=;
	b=zjJLpUZoyhX7CrHvi6rIX3VZKcLqKfd8kCvaIfiinx5W1Wj+FkYTrMAynK4DfvQzNBkeUC
	amFVwGhq8qDJbtAA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 44DDA13699;
	Sun,  2 Nov 2025 10:58:47 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id MNZzDmc5B2mYMgAAD6G6ig
	(envelope-from <svarbanov@suse.de>); Sun, 02 Nov 2025 10:58:47 +0000
Message-ID: <39257a41-6719-4daa-a979-a9c2a629ec24@suse.de>
Date: Sun, 2 Nov 2025 12:58:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: broadcom: bcm2712: rpi-5: Add ethernet0 alias
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
 Andrea della Porta <andrea.porta@suse.com>, Andrew Lunn <andrew@lunn.ch>,
 Conor Dooley <conor+dt@kernel.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 "Ivan T. Ivanov" <iivanov@suse.de>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Phil Elwell <phil@raspberrypi.com>,
 Rob Herring <robh@kernel.org>, Stanimir Varbanov <svarbanov@suse.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
References: <20251102002901.467-1-laurent.pinchart@ideasonboard.com>
Content-Language: en-US
From: Stanimir Varbanov <svarbanov@suse.de>
In-Reply-To: <20251102002901.467-1-laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Level: 
X-Spam-Flag: NO
X-Rspamd-Queue-Id: E3C63219A1
X-Rspamd-Action: no action
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spamd-Result: default: False [-3.01 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	ARC_NA(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2a07:de40:b281:106:10:150:64:167:received,2a07:de40:b281:104:10:150:64:97:from];
	SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	DWL_DNSWL_BLOCKED(0.00)[suse.de:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:rdns,imap1.dmz-prg2.suse.org:helo,ideasonboard.com:email,suse.de:dkim,suse.de:mid]
X-Spam-Score: -3.01

Hi Laurent,

Thank you for the patch!

On 11/2/25 2:29 AM, Laurent Pinchart wrote:
> The RP1 ethernet controller DT node contains a local-mac-address
> property to pass the MAC address from the boot loader to the kernel. The
> boot loader does not fill the MAC address as the ethernet0 alias is
> missing. Add it.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> index 04738bf281eb..fa438ac8c9ef 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
> @@ -10,6 +10,7 @@ / {
>  	model = "Raspberry Pi 5";
>  
>  	aliases {
> +		ethernet0 = &rp1_eth;
>  		serial10 = &uart10;
>  	};
>  

Unfortunately this does not compile:

make[1]: Entering directory '/rpi5/kobj'
  GEN     Makefile
  DTC     arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dtb
  DTC     arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dtb
  DTC     arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dtb
/linux/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts:12.10-15.4:
ERROR (path_references): /aliases: Reference to non-existent node or
label "rp1_eth"

ERROR: Input tree has errors, aborting (use -f to force output)
make[4]: *** [/linux/scripts/Makefile.dtbs:132:
arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dtb] Error 2
make[4]: *** Waiting for unfinished jobs....
make[3]: *** [/linux/scripts/Makefile.build:556:
arch/arm64/boot/dts/broadcom] Error 2


I've made following fix on top of your patch, but I'm not sure that it
is the correct one.

Andrea, could you comment please?

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
index bbad90d497fa..734b06ac5ba2 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b-ovl-rp1.dts
@@ -9,8 +9,7 @@ / {
 	compatible = "raspberrypi,5-model-b", "brcm,bcm2712";
 	model = "Raspberry Pi 5";

-	aliases {
-		ethernet0 = &rp1_eth;
+	aliases: aliases {
 		serial10 = &uart10;
 	};

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
index 9f1976f0fd1a..26a99e72d441 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
@@ -22,6 +22,10 @@ &pcie2 {
 	#include "rp1-nexus.dtsi"
 };

+&aliases {
+	ethernet0 = &rp1_eth;
+};
+
 &rp1_adc {
 	vref-supply = <&rp1_vdd_3v3>;
 	status = "okay";

~Stan


