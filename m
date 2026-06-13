Return-Path: <devicetree+bounces-311263-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e8KpLFYTLWocbAQAu9opvQ
	(envelope-from <devicetree+bounces-311263-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 10:22:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B84F167E1F3
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 10:22:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=GVEYIj6U;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311263-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311263-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BEAEB3007232
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 08:22:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A94AB3CC9E8;
	Sat, 13 Jun 2026 08:22:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2531D3C9893
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 08:22:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781338957; cv=none; b=ea74GoK3pmpxJ8gsLJYyjkfqj4QueqX8sngbGpPcGM8fpzN3mD3lMPhqe0fKWmJ/uwbAOpxOl5APLNQAFf+xDixFbNHgDFgBAvnr1V2nxM5r86JPVAWxRKSAV+bg7vP+Ll2F/mpZAemngBVrbIryyQehdRY1KeR52JCC1xqHiO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781338957; c=relaxed/simple;
	bh=5BOSuS+iU7vFYlQwtmoDD7uZ06WyRq2X9XCUtj9GmXQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=m89ZYlImouVgQCgxvIb5uLz/LKBYBDXjC3Z2SKX3iaGg2bwLS4zwRQTFnakTEuE8KV3vu/ZlZ9JAx76s6LBeXA4zL3vg+2YyJ5z+iCEmqRVzR0e2rRpRcgzjCgA3Jg7TthfvKuVCOUy2doq/uV+8bj256Kgj4BXRBuY9ODMNW/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GVEYIj6U; arc=none smtp.client-ip=209.85.221.51
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-45eea68dd6fso941718f8f.2
        for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 01:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781338951; x=1781943751; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aDCfgIsCd0Q4hB2aGkv+tHe8owWljtqt1jPIzUxxB/s=;
        b=GVEYIj6US3GAHbVfY4IWPlRtWf+6RQE4Mg4kXNNpyqCzK3yVm0eAln2zThaaOQ1o8Z
         j4FUz8m8/7rYWsA2ksMTualM1zRXt21xz3c+mo4raS0H6rDFXxalgRCT4EW8zjZmBase
         aKbEGJNT7P0u6Q6N/ik9FJ0770KNjMBAUTofO4IQnEs5tY453YoI6a7osK/UMFRGwLZ4
         EKGuvW/a3qI1Rt6JNH+2XKrujHRN8KVxmWaPPxJsTOhU2kulrSvke4Rw20WNN5gJDe75
         B83FESP3pkP508wE7wkOy+SwEjvj1dQGcaTYG5lL/X2LbW0tX2khC/+GLNTXfSkdZxux
         QRFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781338951; x=1781943751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aDCfgIsCd0Q4hB2aGkv+tHe8owWljtqt1jPIzUxxB/s=;
        b=V/LBp39xEubNcuCjtMXDspICeIcW6E1G7T+ZpWuITlghWIR/TsLPJUQkjle2MrAg/f
         RNjQ+yLSbagyQvyV8XAH2368g6oe9M7+pQav+zGqBxUeJVGLN6nZi1iboyzYn/snGB42
         paJXo+aUmxxzkwi4s63iLX8zauZtAmgge40WXDGuOdBZ0PNpip22eZAp5i1SxxrJ94GE
         T9GS3u67qVIb5sn/Cg7Jc1TrmkBqFGcTn1Xj/boVRIKZpVScizJLRlBr5Kv1zIUVAHkT
         1Qw1c1Ada9dNFX3DomMSi7AGeHYRw4ReG9NwNqD/+rzP7UElXyFLFoLkRzYro+r/cQFC
         ON9w==
X-Forwarded-Encrypted: i=1; AFNElJ9Qt2p0MsyXBF6UDF370SKti8FwcsVGr1xdXVLmx0REIU+s7oZd/rucQR/JhVn0lxslln2Dz5Kk31Ab@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6BP8pKjERSOwDchuKevTlGR5vTd6yI8O6ZehRB8F0TUTAxB7V
	JVeXea7+SOdqaa4fXLUak8Oz0E1C/nHPnsvfIPiXZmm3YZomRBmyXrpx
X-Gm-Gg: Acq92OFQH0+xXOs2irRQifKLGhniMgF7Epxr75+GkDX7R7Tao8wEbmTSUPHl/+17t9s
	iXJSI5bCn/yyAM3IYhvgNXNJJltpHr2uP9FUbR7Nbyo+A0zCuxK/GqsqHq6I1jpfPp3xo2wYFCZ
	c5nCF5hY13seilYj8QKi0e/Zzt7Da2sEokqWFwG6PjmoTDEuy8wMGlKtgxaIOSHd0hfHxnBkEVv
	caniaEqdpQIhby8HM2kBhQ+UlQ0s9k13n7AM3V9yWLhyPd3EEdqpH2FDFiV1HKJO8FzKq1jjwd5
	aZNOKyDDRBEWW98nO/Jd2Hmm6djyZD94bkWL9OIdVUcdXIjqgddAiugIqUk9543w3dhhpiP4Juo
	vHsfGWbR2pe1+/+eiOo81kHym2WESm7xS/JBUhoAMjqmvy0hzDFe/QPYOACaIewk+Z7ektC9HZ0
	+iQD5XVGgp7D8YU9QARfT/zQavuG9O5UeSqRYMNIqrUqti549sNfcRWmI=
X-Received: by 2002:a05:6000:608:b0:460:70ae:f196 with SMTP id ffacd0b85a97d-46070aef211mr8420172f8f.7.1781338951277;
        Sat, 13 Jun 2026 01:22:31 -0700 (PDT)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f26f3dcsm12723144f8f.13.2026.06.13.01.22.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jun 2026 01:22:30 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Hans de Goede <hansg@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Andre Przywara <andre.przywara@arm.com>, Jun Yan <jerrysteve1101@gmail.com>,
 Lukas Schmid <lukas.schmid@netcube.li>,
 =?UTF-8?B?Si4gTmV1c2Now6RmZXI=?= <j.ne@posteo.net>,
 Eric Biggers <ebiggers@kernel.org>, Michal Simek <michal.simek@amd.com>,
 Luca Weiss <luca@lucaweiss.eu>, Sven Peter <sven@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org
Subject: Re: [PATCH v4 6/7] arm64: dts: allwinner: a100: reserve RAM for ATF
Date: Sat, 13 Jun 2026 10:22:29 +0200
Message-ID: <_6NEZ78hR8a_3V2bhBAGoQ@gmail.com>
In-Reply-To: <20260605070923.3045073-7-alexander.sverdlin@gmail.com>
References:
 <20260605070923.3045073-1-alexander.sverdlin@gmail.com>
 <20260605070923.3045073-7-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311263-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:alexander.sverdlin@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wens@kernel.org,m:samuel@sholland.org,m:hansg@kernel.org,m:dmitry.torokhov@gmail.com,m:andre.przywara@arm.com,m:jerrysteve1101@gmail.com,m:lukas.schmid@netcube.li,m:j.ne@posteo.net,m:ebiggers@kernel.org,m:michal.simek@amd.com,m:luca@lucaweiss.eu,m:sven@kernel.org,m:mripard@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-input@vger.kernel.org,m:alexandersverdlin@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[lists.infradead.org,lists.linux.dev,gmail.com];
	FORGED_SENDER(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,sholland.org,arm.com,netcube.li,posteo.net,amd.com,lucaweiss.eu,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jernejskrabec@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B84F167E1F3

Dne petek, 5. junij 2026 ob 09:09:20 Srednjeevropski poletni =C4=8Das je Al=
exander Sverdlin napisal(a):
> Add reserved-memory node carving out Trusted Firmware-A region spanning
> fixed 256K from physical address 0x40000000. Even though Allwinner ATF
> itself passes the address range in the fdt to U-Boot, U-Boot currently
> only reserves this memory internally, but doesn't carve out the region
> in the fdt passed to Linux.
>=20
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>

NAK. It is job of boot procedure to properly inject TF-A reserved node.
Any issue should be fixed there.

Best regards,
Jernej Skrabec

> ---
> Changelog:
> v4:
> - new patch
>=20
>  arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi b/arch/arm64/=
boot/dts/allwinner/sun50i-a100.dtsi
> index 7cb06b19b5a5..d8391663fd1d 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
> @@ -87,6 +87,22 @@ osc32k: osc32k-clk {
>  		#clock-cells =3D <0>;
>  	};
> =20
> +	reserved-memory {
> +		#address-cells =3D <2>;
> +		#size-cells =3D <2>;
> +		ranges;
> +
> +		/*
> +		 * 256 KiB reserved for Trusted Firmware-A (BL31).
> +		 * This is added by BL31 itself, but some bootloaders fail
> +		 * to propagate this into the DTB handed to kernels.
> +		 */
> +		secmon@40000000 {
> +			reg =3D <0x0 0x40000000 0x0 0x40000>;
> +			no-map;
> +		};
> +	};
> +
>  	timer {
>  		compatible =3D "arm,armv8-timer";
>  		interrupts =3D <GIC_PPI 13
>=20





