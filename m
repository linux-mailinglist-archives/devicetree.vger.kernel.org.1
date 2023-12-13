Return-Path: <devicetree+bounces-24686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2FA810DD6
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:04:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DC76A1F21183
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 10:04:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1759622087;
	Wed, 13 Dec 2023 10:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xA86cer1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D03810B
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 02:04:44 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-dbcd67d4c29so170969276.3
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 02:04:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702461883; x=1703066683; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UW6j6VNL8VCBZjejnKXWYkB2uzhHDBsJkDlpkHGo9WI=;
        b=xA86cer1x73WQBw6eUxfMW2X21XpNk//+fjeRGf8tTb9N2KJ+6gfoue/niyyGwsIXZ
         cZs4MsPyBSxMI5bfNcUYMLk5y9YzrM2TvgtOQVMODgegWL3l9xqArCxBeLtpurWvM/T4
         zc0DC30OQiFkqBsUjPrvKrd6SvBNQKGnP1kR4AIw19ruooj5lQqtRW69qlBgu+wqGBHr
         CeB/2DLyB3yyMn0WQlhQe/YB31sYGHkaLodh6o0WI1i4HHuFiMbPNOivpwAcRdJ7AFeB
         K4MrqVIb0Bbdk9ZELxyn0YvI5I0rDRiylCvrpI2STPGGPeiqrDRs/ejeSvgbzEEtEt1V
         LrmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702461883; x=1703066683;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UW6j6VNL8VCBZjejnKXWYkB2uzhHDBsJkDlpkHGo9WI=;
        b=R09WaEKNhWdq2PSpb3/UvDui3WqZENuf2MHQL7/fq0+FcCn53png5u5N3Xd2sYLE3G
         KK+KNsdGoNbSz5oRFQe2SUxAod3aYPRyGylpRPKDvju4XeUIq0o20A02qFAyzLEn+fwc
         tTttkVvCtNoeelQ1vS7Kn1YFvkPZbubuiI161usY2rdp0TVvRDALXONiiquvOIq0HcXX
         Iw+Twwdl3zrX7Wj09dCuumfuaY5N6voSHcbhQF1V2UJXu5+qgERHjCPrtDnJJ87HdTZr
         cnPcRfCt7Ng8vTG6NAK1ztkPQ58obPcxkV2rc4ksbrhA5VPP9m1u/3buytLWMk942Ns1
         VAhw==
X-Gm-Message-State: AOJu0YzCnA33+xLOZhTKzHCjRrB76kVpLqt4KaoetviG2QfIfyUwsXwb
	RavWoq5rU4jwRl/zEsdZS0PAU1gWk36aRmhegvoK2A==
X-Google-Smtp-Source: AGHT+IECcIKBRun8rt0jvzDRIVumblmfcQvQhFUzWoInYyHHex90iGUYHdeBU8ksbyCQqmu0eQ+R4+SBWv8N9FwXnpo=
X-Received: by 2002:a05:6902:28c:b0:db7:dad0:76d2 with SMTP id
 v12-20020a056902028c00b00db7dad076d2mr4693790ybh.110.1702461883525; Wed, 13
 Dec 2023 02:04:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231117101817.4401-1-quic_tengfan@quicinc.com>
 <20231117101817.4401-16-quic_tengfan@quicinc.com> <e3e27fec-8ab9-4331-a5aa-2958dd630b11@linaro.org>
 <420ce17d-279e-47ee-9935-35bc03b89f98@quicinc.com>
In-Reply-To: <420ce17d-279e-47ee-9935-35bc03b89f98@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 13 Dec 2023 12:04:32 +0200
Message-ID: <CAA8EJpqoUBbq52EHPK+TYC67RzRJt9pnDwLA1SrFdPmXxyG3dg@mail.gmail.com>
Subject: Re: [PATCH 15/16] arm64: dts: qcom: sm8550-aim300: add pmic glink port/endpoints
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	tglx@linutronix.de, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 28 Nov 2023 at 10:11, Tengfei Fan <quic_tengfan@quicinc.com> wrote:
>
>
>
> =E5=9C=A8 11/17/2023 6:32 PM, Dmitry Baryshkov =E5=86=99=E9=81=93:
> > On 17/11/2023 12:18, Tengfei Fan wrote:
> >> Add nodes to support Type-C USB/DP functionality.
> >>
> >> On this platform, a Type-C redriver is added to the SuperSpeed graph.
> >>
> >> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> >> ---
> >>   arch/arm64/boot/dts/qcom/sm8550-aim300.dts | 88 ++++++++++++++++++++=
+-
> >>   1 file changed, 87 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/sm8550-aim300.dts
> >> b/arch/arm64/boot/dts/qcom/sm8550-aim300.dts
> >> index 6dc3040b9f76..f3c558dd40f1 100644
> >> --- a/arch/arm64/boot/dts/qcom/sm8550-aim300.dts
> >> +++ b/arch/arm64/boot/dts/qcom/sm8550-aim300.dts
> >> @@ -100,7 +100,15 @@
> >>                       reg =3D <1>;
> >>                       pmic_glink_ss_in: endpoint {
> >> -                        remote-endpoint =3D <&usb_1_dwc3_ss>;
> >> +                        remote-endpoint =3D <&redriver_ss_out>;
> >> +                    };
> >> +                };
> >> +
> >> +                port@2 {
> >> +                    reg =3D <2>;
> >> +
> >> +                    pmic_glink_sbu: endpoint {
> >> +                        remote-endpoint =3D <&fsa4480_sbu_mux>;
> >>                       };
> >>                   };
> >>               };
> >> @@ -519,6 +527,62 @@
> >>       };
> >>   };
> >> +&i2c_master_hub_0 {
> >> +    status =3D "okay";
> >> +};
> >> +
> >> +&i2c_hub_2 {
> >> +    status =3D "okay";
> >> +
> >> +    typec-mux@42 {
> >> +        compatible =3D "fcs,fsa4480";
> >> +        reg =3D <0x42>;
> >> +
> >> +        vcc-supply =3D <&vreg_bob1>;
> >> +
> >> +        mode-switch;
> >> +        orientation-switch;
> >> +
> >> +        port {
> >> +            fsa4480_sbu_mux: endpoint {
> >> +                remote-endpoint =3D <&pmic_glink_sbu>;
> >> +            };
> >> +        };
> >> +    };
> >> +
> >> +    typec-retimer@1c {
> >> +        compatible =3D "onnn,nb7vpq904m";
> >> +        reg =3D <0x1c>;
> >> +
> >> +        vcc-supply =3D <&vreg_l15b_1p8>;
> >> +
> >> +        orientation-switch;
> >> +        retimer-switch;
> >> +
> >> +        ports {
> >> +            #address-cells =3D <1>;
> >> +            #size-cells =3D <0>;
> >> +
> >> +            port@0 {
> >> +                reg =3D <0>;
> >> +
> >> +                redriver_ss_out: endpoint {
> >> +                    remote-endpoint =3D <&pmic_glink_ss_in>;
> >> +                };
> >> +            };
> >> +
> >> +            port@1 {
> >> +                reg =3D <1>;
> >> +
> >> +                redriver_ss_in: endpoint {
> >> +                    data-lanes =3D <3 2 1 0>;
> >> +                    remote-endpoint =3D <&usb_dp_qmpphy_out>;
> >> +                };
> >> +            };
> >> +        };
> >> +    };
> >> +};
> >> +
> >>   &gcc {
> >>       clocks =3D <&bi_tcxo_div2>, <&sleep_clk>,
> >>            <&pcie0_phy>,
> >> @@ -552,6 +616,16 @@
> >>       status =3D "okay";
> >>   };
> >> +&mdss_dp0 {
> >> +    status =3D "okay";
> >> +};
> >> +
> >> +&mdss_dp0_out {
> >> +    data-lanes =3D <0 1>;
> >
> > Why? Are you really limited to two lanes for DP by the hardware?
> I got confirmation from a colleague that it is right that limited to two
> lanes.

Excuse me, I missed your reply earlier. Is it 2 DP lanes and 2 SS USB
lanes? Or are there just 2 lanes which are shared between DP and SS
USB?

> >
> >> +    remote-endpoint =3D <&usb_dp_qmpphy_dp_in>;
> >> +};
> >> +
> >> +
> >>   &mdss_dsi0 {
> >>       vdda-supply =3D <&vreg_l3e_1p2>;
> >>       status =3D "okay";
> >> @@ -861,6 +935,18 @@
> >>       status =3D "okay";
> >>   };
> >> +&usb_dp_qmpphy_dp_in {
> >> +    remote-endpoint =3D <&mdss_dp0_out>;
> >> +};
> >> +
> >> +&usb_dp_qmpphy_out {
> >> +    remote-endpoint =3D <&redriver_ss_in>;
> >> +};
> >> +
> >> +&usb_dp_qmpphy_usb_ss_in {
> >> +    remote-endpoint =3D <&usb_1_dwc3_ss>;
> >> +};
> >> +
> >>   &xo_board {
> >>       clock-frequency =3D <76800000>;
> >>   };
> >
>
> --
> Thx and BRs,
> Tengfei Fan



--=20
With best wishes
Dmitry

