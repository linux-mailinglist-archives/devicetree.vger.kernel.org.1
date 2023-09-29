Return-Path: <devicetree+bounces-4525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B489E7B2EC1
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 11:01:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 457A0282852
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 09:01:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C94D1171B;
	Fri, 29 Sep 2023 09:01:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71574441B
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 09:01:08 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96020180
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 02:01:02 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9b29186e20aso1123019066b.2
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 02:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1695978061; x=1696582861; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jCib+YEJ6+7KaH85hc8Nb8MnFh17rpSkk5Oe5+3Arrc=;
        b=AUTSRteTyo95zFGGVfWFGl3v8vYxH4Nrnn738GzkQogs6CJJyrteC1PupHgsY9Yb62
         7WnGA8wfXdvUL6Xa/D1MStfhsB17K/BU32odY0TQvY4q5pEqjqPyOocyoQYrLoDtaakv
         yHkDccJ6GM1zsAmBEHQ1s9wzyWCXisEvcs4+DGFL1Le9WEV6nix+rcvQEd1UlpBzcdlp
         auPSSM+j9hXKvMPVt9WiY6sgN20r3qn6fVj3m9HTLLxo3aXH1FOpSCfy1QkyRGgiS+PA
         or9zXUg/RNB2j/hiI3YgQd+e0SnoEkRRoITO0KzhuUkBQ5VR3OE48tOop7QCujYpYBJN
         0DQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695978061; x=1696582861;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jCib+YEJ6+7KaH85hc8Nb8MnFh17rpSkk5Oe5+3Arrc=;
        b=YQV2X2mOT+42iYzBD2ZtztOSReGCBCeFTsftv+ATwFYJ+gIiGgQP+Uigj+36NturqB
         ypwcSEiQr9No2ncTx5X+1dvzKnbnzybtkgLQdz8/MP6IF0p652bIhl+v5yziJqqjNebR
         qoXWNU6U4KBExB1Psy8gJGGLjrQx3Dw9cersd2yHf4QgLpPIsOhUFAPPv11UYiXJEvn6
         mxKoeMhy3kDDoY6YR/uuyQLZ+0gbrPNYm+mX/yopjI+jOtmj8M+zE3OiOGJOj0iWW9OX
         DL1WIJz0omehYqMgicCa+C57U2WGOkHSomBzDiQecADzqu7dTtqzx2XvLjJanQJKxUqv
         aBEg==
X-Gm-Message-State: AOJu0YzcSv6MiiGJOn5O7RUOXboBjWiQZ0Lcdnc/hQactjuWJoM+6frA
	C8q7xkFkzeoTnZ/TAJ4E8WeDBg==
X-Google-Smtp-Source: AGHT+IF8LpBwznH+qjY6BeKJwXeYUOfJ8dYEkZ+qseK8NDxlpDW8TzadUKBD4uecOioziiIYg5ZmsA==
X-Received: by 2002:a17:906:3050:b0:9ae:65a5:b6f4 with SMTP id d16-20020a170906305000b009ae65a5b6f4mr3370291ejd.20.1695978060936;
        Fri, 29 Sep 2023 02:01:00 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id bl19-20020a170906c25300b0099bc8db97bcsm12087256ejb.131.2023.09.29.02.01.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Sep 2023 02:01:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 29 Sep 2023 11:01:00 +0200
Message-Id: <CVVA1OVF4W9E.380D6QC1K9GD6@otso>
Cc: <linux-arm-msm@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH V3 2/4] arm64: dts: qcom: sc7280: Add UFS nodes for
 sc7280 soc
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Nitin Rawat" <quic_nitirawa@quicinc.com>, <agross@kernel.org>,
 <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <mani@kernel.org>,
 <alim.akhtar@samsung.com>, <bvanassche@acm.org>, <avri.altman@wdc.com>,
 <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
 <conor+dt@kernel.org>, <cros-qcom-dts-watchers@chromium.org>
X-Mailer: aerc 0.15.2
References: <20230927081858.15961-1-quic_nitirawa@quicinc.com>
 <20230927081858.15961-3-quic_nitirawa@quicinc.com>
In-Reply-To: <20230927081858.15961-3-quic_nitirawa@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Nitin,

On Wed Sep 27, 2023 at 10:18 AM CEST, Nitin Rawat wrote:
> Add UFS host controller and PHY nodes for sc7280 soc.
>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 63 ++++++++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/q=
com/sc7280.dtsi
> index 66f1eb83cca7..0b50b8557311 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -3353,6 +3353,69 @@
>  			};
>  		};

I think above you should also have this diff:

--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -868,11 +868,11 @@ gcc: clock-controller@100000 {
 			compatible =3D "qcom,gcc-sc7280";
 			reg =3D <0 0x00100000 0 0x1f0000>;
 			clocks =3D <&rpmhcc RPMH_CXO_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK_A>, <&sleep_clk>,
 				 <0>, <&pcie1_lane>,
-				 <0>, <0>, <0>, <0>;
+				 <&ufs_mem_phy 0>, <&ufs_mem_phy 1>, <&ufs_mem_phy 2>, <0>;
 			clock-names =3D "bi_tcxo", "bi_tcxo_ao", "sleep_clk",
 				      "pcie_0_pipe_clk", "pcie_1_pipe_clk",
 				      "ufs_phy_rx_symbol_0_clk", "ufs_phy_rx_symbol_1_clk",
 				      "ufs_phy_tx_symbol_0_clk",
 				      "usb3_phy_wrapper_gcc_usb30_pipe_clk";

>
> +		ufs_mem_hc: ufs@1d84000 {
> +			compatible =3D "qcom,sc7280-ufshc", "qcom,ufshc",
> +				     "jedec,ufs-2.0";
> +			reg =3D <0x0 0x01d84000 0x0 0x3000>;
> +			interrupts =3D <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> +			phys =3D <&ufs_mem_phy>;
> +			phy-names =3D "ufsphy";
> +			lanes-per-direction =3D <2>;
> +			#reset-cells =3D <1>;
> +			resets =3D <&gcc GCC_UFS_PHY_BCR>;
> +			reset-names =3D "rst";
> +
> +			power-domains =3D <&gcc GCC_UFS_PHY_GDSC>;
> +			required-opps =3D <&rpmhpd_opp_nom>;
> +
> +			iommus =3D <&apps_smmu 0x80 0x0>;
> +			dma-coherent;
> +
> +			clocks =3D <&gcc GCC_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
> +			clock-names =3D "core_clk",
> +				      "bus_aggr_clk",
> +				      "iface_clk",
> +				      "core_clk_unipro",
> +				      "ref_clk",
> +				      "tx_lane0_sync_clk",
> +				      "rx_lane0_sync_clk",
> +				      "rx_lane1_sync_clk";
> +			freq-table-hz =3D
> +				<75000000 300000000>,
> +				<0 0>,
> +				<0 0>,
> +				<75000000 300000000>,
> +				<0 0>,
> +				<0 0>,
> +				<0 0>,
> +				<0 0>;
> +			status =3D "disabled";
> +		};
> +
> +		ufs_mem_phy: phy@1d87000 {
> +			compatible =3D "qcom,sc7280-qmp-ufs-phy";
> +			reg =3D <0x0 0x01d87000 0x0 0xe00>;
> +			clocks =3D <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> +				 <&gcc GCC_UFS_1_CLKREF_EN>;
> +			clock-names =3D "ref", "ref_aux", "qref";
> +
> +			resets =3D <&ufs_mem_hc 0>;
> +			reset-names =3D "ufsphy";
> +
> +			#clock-cells =3D <1>;
> +			#phy-cells =3D <0>;
> +
> +			status =3D "disabled";
> +		};

Would you mind adding something like the following at the same time?

+		ice: crypto@1d88000 {
+			compatible =3D "qcom,sc7280-inline-crypto-engine",
+				     "qcom,inline-crypto-engine";
+			reg =3D <0 0x01d88000 0 0x8000>;
+			clocks =3D <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+		};


And then link it to the ufs_mem_hc node with qcom,ice =3D <&ice>; ?

Or add it in a followup patch, also fine with me.

Other than that, looks pretty similar to the nodes that I have in my own
tree which work fine for the most part.

Regards
Luca

> +
>  		usb_1_hsphy: phy@88e3000 {
>  			compatible =3D "qcom,sc7280-usb-hs-phy",
>  				     "qcom,usb-snps-hs-7nm-phy";
> --
> 2.17.1


