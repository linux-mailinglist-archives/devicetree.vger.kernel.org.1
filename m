Return-Path: <devicetree+bounces-249651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 893DDCDD9D0
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 10:47:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F14D33004F70
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 09:46:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED75D30B50D;
	Thu, 25 Dec 2025 09:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="knYH/PtM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658F727713
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 09:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766656005; cv=none; b=YlJIj3vsebW8AEGFJVKZ+xXs0ekhG8UYO20rtNZmZxzznOr0VO6fscB3TLBWEkPhEAa9EgeZTTf+4NFsH2Z099JjUtahY6a9/L0ZdYgMVq4E24RUvOGc7W/yTEtgYHo2hrwYcpvL6EdpF9jJ+hwDkTRDdldO10GwCkK+6100Us8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766656005; c=relaxed/simple;
	bh=XU0H9X7fZm1Z3gPJ02BRt6tSCJ4tBeuL3gl1Fsub/EI=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=SkVSnlJrrz8KRxDtW7DA1dCVfQXtUNqZWjjooOK/C1UcRvYjvQl82DAWwWHugaqYVH8+Hkh3IfefFV84c/srchKd8rjmTlSImDT5KANEvPfeMAdTf3GFKNM1hvQ8wHnzyCHJr6EfC+EKxsq0LAZ9tAdoBkiGDxnHZAK50O3tPEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=knYH/PtM; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2a0bb2f093aso66691125ad.3
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 01:46:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766656004; x=1767260804; darn=vger.kernel.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XU0H9X7fZm1Z3gPJ02BRt6tSCJ4tBeuL3gl1Fsub/EI=;
        b=knYH/PtM6X1o2qP2n110azzt80vvFv8r0njb6mPToKZSQ5+pNzBnA9zWKM71659MOx
         LQB3+tz/1pRYSJMECy/lRNuNt47XVbjW2tu1/mwjQAnN4icVe5psVKy5Dm9T6DbQURvN
         sT8Ivhyx2xZDwNAqip+4EQcxUGyjo8apRjLXiE15H9ASxk7GtDga83AZIIJA1CKIlfDr
         Juu6OFyYhRCgKNMqGiHwEelXak9M3S6O3IW4GQ7OcryDgLet3VKGcNOpCxxd6rKD5TTg
         IWdUiGOQQjLlXrmF/F04A3bH7C+ilOXABl78V9dPA8qASOwG6yZR16n1P61vYt9vF3ci
         xOmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766656004; x=1767260804;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XU0H9X7fZm1Z3gPJ02BRt6tSCJ4tBeuL3gl1Fsub/EI=;
        b=Pbu8ls3H+goSik2OjfvmIKwsve+B4SpxFXKNapgWSn7UKbZjYeqreYfdFVLLx/WKe5
         3q5/wVtDoO/Uv+D8FbXc+Vshj6gIyGuvQg1ff3sv5YrvK6X+8QkAET5S7GZZboPUXOFU
         UkKNXzwYhpVSj9zFrFONyDV+F83nREnbR1UXKKNXNrys3eqc+B1g10KC6xKpeRoXXwUn
         gxUjUEaf+/FyoeeYGhLvL6YMkN0HyiZ3w3fQOG7U8Jo2T4LHh2LNxdcajAIaA/6ArjRv
         2x9MAcVVZx6bRIcLZgbG6xmESfsDaNHKspJ+xXGROLQLfVji8UbKNFtT8wjx1CRGirU4
         QseA==
X-Forwarded-Encrypted: i=1; AJvYcCVe0dxkwaj8+BTrMX2XquDYHhmt1eNRKFIr+4sw1UUZtjhR/ZLR0QJMG87A3BXqP33XKUrVe9pyW7sG@vger.kernel.org
X-Gm-Message-State: AOJu0YxZdCAso3S0JTyXpiVF2TGViQwB/auwW4a+VkcQOePiTTRT00QP
	LNEr1mLAIPd3TvulBTwUz/WfH5mPQXK2csIsknQWmFrNbe/NNZd2Qt5O
X-Gm-Gg: AY/fxX7hAjFxFEPuZWG8hdq0Mq803LrG+7e+e3zxj6MN+/FnrrDJWDTs37h215N9u9R
	Pnj5u3CWpz4ZhKVNxlTTzpQZ+b0E1Ti+wcg+Qr2aQDYDw3nW6At+xJUy8W5m420MJnclcT6rHo0
	k7AouLFJHQhqL1v4jrDyolIqQ1mZTVvL7UIdzKY6H/jO4OHZzBfnUdETCJH7mZ5bPZXCkDjNOXu
	CLvPD3wzNEhZhsUPUV/z6nD7lSHoom3nVSXV6LNSoY20gySeK0nCS1LvwdVFr86gX0rZ4Y3xeyK
	oosFQ+eC6o4TklgvprxeB7izD7p7Z5YIC2RhZNWGvkc/G60aQQx02Ghg9sL3t5FFcU0cdY0SeGM
	7rDtxm/VTWChqDI26rtt1V+kCvYoUH5D12dPWtUh/xaxKuUo3FwFV1w7cEODRuY6Q7Cie32yxhf
	Y3AyvEEKgVe4XJwlLZswdM3sk44MUd5WsmJINUGnlLGLZhalWGC9YZNdINFaWd9/mZ01pums+WX
	fy6Sh+JTt/xj8GEoA==
X-Google-Smtp-Source: AGHT+IG8UD9LuX6bsFFbxzl3hXjRr3x95AGwXzFTFfSvdKzK3Y/lf0Ri78tyAb/BhqSaTEFBEEtJng==
X-Received: by 2002:a17:902:d2c5:b0:2a1:4c31:333 with SMTP id d9443c01a7336-2a2f2222cf4mr208327455ad.19.1766656003365;
        Thu, 25 Dec 2025 01:46:43 -0800 (PST)
Received: from smtpclient.apple (125x103x213x40.ap125.ftth.ucom.ne.jp. [125.103.213.40])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c83961sm177814725ad.38.2025.12.25.01.46.36
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Dec 2025 01:46:43 -0800 (PST)
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH v4 6/9] riscv: dts: thead: add DPU and HDMI device tree
 nodes
From: "Han Gao (Revy)" <rabenda.cn@gmail.com>
In-Reply-To: <20251224161205.1132149-7-zhengxingda@iscas.ac.cn>
Date: Thu, 25 Dec 2025 17:46:26 +0800
Cc: "Han Gao (Revy)" <rabenda.cn@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Drew Fustini <fustini@kernel.org>,
 Guo Ren <guoren@kernel.org>,
 Fu Wei <wefu@redhat.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Heiko Stuebner <heiko@sntech.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Michal Wilczynski <m.wilczynski@samsung.com>,
 Yao Zi <ziyao@disroot.org>,
 dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org,
 Icenowy Zheng <uwu@icenowy.me>
Content-Transfer-Encoding: quoted-printable
Message-Id: <8A7BC047-96F9-4067-976F-282FA2AE8393@gmail.com>
References: <20251224161205.1132149-1-zhengxingda@iscas.ac.cn>
 <20251224161205.1132149-7-zhengxingda@iscas.ac.cn>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>
X-Mailer: Apple Mail (2.3864.300.41.1.7)



> On Dec 25, 2025, at 00:12, Icenowy Zheng <zhengxingda@iscas.ac.cn> =
wrote:
>=20
> From: Icenowy Zheng <uwu@icenowy.me>
>=20
> T-Head TH1520 SoC contains a Verisilicon DC8200 display controller
> (called DPU in manual) and a Synopsys DesignWare HDMI TX controller.
>=20
> Add device tree nodes to them.
>=20
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
> ---
> No changes in v4.
>=20
> Changes in v3:
> - Adapting to the changed binding.
>=20
> No changes in v2.
>=20
> arch/riscv/boot/dts/thead/th1520.dtsi | 70 +++++++++++++++++++++++++++
> 1 file changed, 70 insertions(+)
>=20
> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi =
b/arch/riscv/boot/dts/thead/th1520.dtsi
> index bd5d33840884e..5c0a7072f253a 100644
> --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> @@ -585,6 +585,76 @@ clk_vo: clock-controller@ffef528050 {
> #clock-cells =3D <1>;
> };
>=20
> + hdmi: hdmi@ffef540000 {
> + compatible =3D "thead,th1520-dw-hdmi";
> + reg =3D <0xff 0xef540000 0x0 0x40000>;
> + reg-io-width =3D <4>;
> + interrupts =3D <111 IRQ_TYPE_LEVEL_HIGH>;
> + clocks =3D <&clk_vo CLK_HDMI_PCLK>,
> + <&clk_vo CLK_HDMI_SFR>,
> + <&clk_vo CLK_HDMI_CEC>,
> + <&clk_vo CLK_HDMI_PIXCLK>;
> + clock-names =3D "iahb", "isfr", "cec", "pix";
> + resets =3D <&rst TH1520_RESET_ID_HDMI>,
> + <&rst TH1520_RESET_ID_HDMI_APB>;
> + reset-names =3D "main", "apb";
> + status =3D "disabled";
> +
> + ports {
> + #address-cells =3D <1>;
> + #size-cells =3D <0>;
> +
> + port@0 {
> + reg =3D <0>;
> +
> + hdmi_in: endpoint {
> + remote-endpoint =3D <&dpu_out_dp1>;
> + };
> + };
> +
> + hdmi_out_port: port@1 {
> + reg =3D <1>;
> + };
> + };
> + };
> +
> + dpu: display@ffef600000 {
> + compatible =3D "thead,th1520-dc8200", "verisilicon,dc";
> + reg =3D <0xff 0xef600000 0x0 0x100000>;
> + interrupts =3D <93 IRQ_TYPE_LEVEL_HIGH>;
> + clocks =3D <&clk_vo CLK_DPU_CCLK>,
> + <&clk_vo CLK_DPU_ACLK>,
> + <&clk_vo CLK_DPU_HCLK>,
> + <&clk_vo CLK_DPU_PIXELCLK0>,
> + <&clk_vo CLK_DPU_PIXELCLK1>;
> + clock-names =3D "core", "axi", "ahb", "pix0", "pix1";
> + resets =3D <&rst TH1520_RESET_ID_DPU_CORE>,
> + <&rst TH1520_RESET_ID_DPU_AXI>,
> + <&rst TH1520_RESET_ID_DPU_AHB>;
> + reset-names =3D "core", "axi", "ahb";
> + status =3D "disabled";
> +
> + ports {
> + #address-cells =3D <1>;
> + #size-cells =3D <0>;
> +
> + dpu_port0: port@0 {
> + reg =3D <0>;
> + };
> +
> + dpu_port1: port@1 {
> + reg =3D <1>;
> + #address-cells =3D <1>;
> + #size-cells =3D <0>;
> +
> + dpu_out_dp1: endpoint@1 {
> + reg =3D <1>;
> + remote-endpoint =3D <&hdmi_in>;
> + };
> + };
> + };
> + };
> +
> dmac0: dma-controller@ffefc00000 {
> compatible =3D "snps,axi-dma-1.01a";
> reg =3D <0xff 0xefc00000 0x0 0x1000>;
> --=20
> 2.52.0
>=20
Tested-by: Han Gao <gaohan@iscas.ac.cn>=

