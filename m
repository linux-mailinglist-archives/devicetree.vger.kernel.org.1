Return-Path: <devicetree+bounces-298633-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MC/cAJg6CGpafQMAu9opvQ
	(envelope-from <devicetree+bounces-298633-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 11:36:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C90555AF35
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 11:36:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CADDE3010B80
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 09:36:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4195B39DBC0;
	Sat, 16 May 2026 09:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="La+t+YuK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4B2380FE3
	for <devicetree@vger.kernel.org>; Sat, 16 May 2026 09:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778924179; cv=none; b=L7+CxdRSWcQuuBwBPOr/hwIqnFAdr11qrqAzUIZFmhpZ8Ueh0WgMqM5J50khuRjKtFmyqj/PrF0qVUGLlB0uryPJ0Vjq12x2A57HAc/k2S+h9vX/L164pCq9u7TJzmFn67wszA+/ygO6U6jGMy6bzYeR+6vxgej/8zu4LbU2n2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778924179; c=relaxed/simple;
	bh=N6jqEOQR9nIKrVorHjcDXuufG/SaNVHDnO70jUHt4Jc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sD3QsuDWKWsomydzChviOfpm6yuUxBByCLwIYIhbxC1gZelwTn9C00qVofWu9QFSHVYmiiERDKGMfS6wgd6lZh+G+myu+lRURe5KmBFbINvY9L6L3lUZPtcjuIGa1o+9WjnZYfTtn7oT/KO3AEvHD3HJW4+2vlePFWF9by7hAZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=La+t+YuK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 787C1C2BCF5;
	Sat, 16 May 2026 09:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778924178;
	bh=N6jqEOQR9nIKrVorHjcDXuufG/SaNVHDnO70jUHt4Jc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=La+t+YuKRQ/LM8RPBaSC4SVPwZVPXW0r9211COIBPvbm8B9UJvuxnf88DNpXl+aWV
	 Or6TP7ynn5fJOllNMIrrWNmhrev7L4lwGCHMmoUsbjr7NLV4BWcv/2gRFnUpsc7p9k
	 zlhfZoZwJlPsP0tPcQXBi8lX6ic7OamjsgrCYPZYH2yeiIpmJBnJaOfGfdkgHwuSyh
	 TnS/6RvUMYQUD6G7cK+Gm6NWjfx6Cna07DR5uuL+56gx7Wid/854YA7B8FYKlttgHu
	 cOLZNgs1cjsrmpABTytnJOFi2wzl3Tz8e8hFMziu/9Asi0enegvBAN7H2cIu3YuHKM
	 o3QTNCqeA/Ipw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 2/3] arm64: dts: qcom: Add Xiaomi 12 Lite 5G (taoyao)
 DTS
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stanislav Zaikin" <zstaseg@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260516090853.2873223-3-zstaseg@gmail.com>
References: <20260516090853.2873223-3-zstaseg@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 16 May 2026 09:36:17 +0000
Message-Id: <20260516093618.787C1C2BCF5@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 4C90555AF35
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298633-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,ef500000:email,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The ramoops memory region is entirely consumed by `pmsg-size`, s=
ilently breaking kernel crash dumps.
- [Low] Device Tree unit address mismatch in the `rmtfs_mem` reserved memor=
y node.
--

commit cc4a7cf1d691d4d94cb9b845a5a49075f69a93ff
Author: Stanislav Zaikin <zstaseg@gmail.com>

arm64: dts: qcom: Add Xiaomi 12 Lite 5G (taoyao) DTS

This commit adds device tree support for the Xiaomi 12 Lite 5G handset,
enabling features such as display, touchscreen, UFS, power/volume buttons,
and remoteprocs.

> diff --git a/arch/arm64/boot/dts/qcom/sm7325-xiaomi-taoyao.dts b/arch/arm=
64/boot/dts/qcom/sm7325-xiaomi-taoyao.dts
> new file mode 100644
> index 0000000000000..eb83da4b836e1
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sm7325-xiaomi-taoyao.dts

[ ... ]

> +		ramoops@a9000000 {
> +			compatible =3D "ramoops";
> +			reg =3D <0x0 0xa9000000 0x0 0x200000>;
> +			pmsg-size =3D <0x200000>;

Does this configuration leave any room for kernel crash dumps?

The node defines a memory region of exactly 2MB, but pmsg-size consumes the
entire 0x200000 bytes. Because pmsg-size consumes all available space, zero
space remains for record-size (which defaults to 0). Will the pstore/ramoops
driver be able to store kernel dmesg during panics or oops with this setup?

> +			mem-type =3D <2>;
> +		};

[ ... ]

> +		rmtfs_mem: rmtfs@ef500000 {
> +			compatible =3D "qcom,rmtfs-mem";
> +			reg =3D <0x0 0xe7d00000 0x0 0x280000>;

Is this unit address intentionally mismatched with the reg property?

The node is named rmtfs@ef500000, but its reg property specifies a base
address of 0xe7d00000. Can this structural syntax violation trigger a
simple_bus_reg dtc compiler warning?

> +			no-map;
> +
> +			qcom,client-id =3D <1>;
> +			qcom,vmid =3D <QCOM_SCM_VMID_MSS_MSA>,
> +				    <QCOM_SCM_VMID_NAV>;
> +		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260516090853.2873=
223-1-zstaseg@gmail.com?part=3D2

