Return-Path: <devicetree+bounces-220627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D6CB988BB
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 09:31:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 37BC07A850E
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 07:29:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4129627E056;
	Wed, 24 Sep 2025 07:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mhlz/VJt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C0B21CA03
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758699071; cv=none; b=cW4yuj+Y+P60Ktb96rSpnO6zihsB2A3cgoOJY1IbnitS4OB/yoRddiVWJ3vqlRHgsQfYRk9+ipVdCiGjRCey/0vsHWuP5OlPoUGyTJJ9TuUDFHalUmFcAs4BFkfNG6Rg6qBNb/F8T6IvUiyKQwf02AlNATOg4brZLxVgE3F2viU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758699071; c=relaxed/simple;
	bh=Ms+occQZQuCSD44xVo57Svxy2dzQg/VEiswlEkHo678=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cm0fhoqndzA+JntSy3HFoZl3JsJeleyENFxHR8qQBANN9mRnSCRfrHgQixRa0j4tj19pIlKH7bjEHclUUVJ/fsqKfYrTYRhAnqKJxfkK+DueA6/ubQCliIyEMV0q9rXYgvtmBU+wrCpHibsqywY8BZl5cu2Mymv1YUN20XsR5PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mhlz/VJt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58O4iJVU019945
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:31:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2q/vEK6CUTCvfuhUkYbzlC1U+3gSLyi11zmYNqSnbI0=; b=mhlz/VJtVCewsdE5
	0sQIuPu/0pyFTwJ9NqZSi6W+wYjis1ZlbQbBZd1/tg9JK0i+4IavM72VHsn2xapt
	ihq8VnO2ZvXYqLyEK4jSgNucMoV4AV0UhTbvHA30OsHllNbbqxpSza7ZoffreikM
	mqUDemdJZnGzThhu10VcQ7B0pLQszB4kpYHMD4gfVy4SaPlDxSUkefCPHYTCPaka
	PzFLEIDBc6Ifs+DJVaJWjg/3lvu+fxo2Y2O2UjmN/c/uUFIipFZAqKG1+VYf5nqs
	Wnp99/Ub0RSohqTzMCbvP+UsTzpUdztk0eUEDmuAnoOPTE5Ro2oPiFnE3Wzn/k8e
	dO3UAA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpdvm35-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 07:31:07 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32eb18b5500so10407220a91.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 00:31:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758699067; x=1759303867;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2q/vEK6CUTCvfuhUkYbzlC1U+3gSLyi11zmYNqSnbI0=;
        b=jPDSswqK6mqfdbPIunvZUQfU+/bFGVxiIGRf/BTR5PZLS8FLBjnSdc5Wr3KRZaQY7Y
         PQlvNq2Bn6IBjd543TizifYFoOfRzQg6/bgMrcRVa63UIy97rD/WJ+y6g8PcrhZeMtRZ
         4wrtUi92FPHz65mJnU5OpRNC6XwrHNYLPrqH/JMDcg3OuglWlra8mKRyOfnT/G4p3Qme
         5qLyo23G42p41TkZ/JkbsKcHGWMR1peo1flF9QfUUi3kj3pES39TGYADrE8VTfr+AHDP
         EEjtzFFIxetD8uONMtmAJZMNPPPZhmavTXoAsaMPDM/jCcZZWePFWb6oOP8OXMAK8kH4
         6AFw==
X-Forwarded-Encrypted: i=1; AJvYcCXiDc/hyBaTKDcHnueaUC2Ol9ltKyOebkrAz31Yp9oPUVfALQjNEbX7haFuA2bVbpxchlNbEKdTgOyp@vger.kernel.org
X-Gm-Message-State: AOJu0YwVdc1D9UlTs0ZBARsXUCCo6D2s3eWvlLVMsxng5MCTo/VvbRlK
	Jv5pmXc0BL8DYq9WeMlCkQpgh3dLE7M/l4i/eEXcCtwIsH8ORDiIyUCPkCMHAhfzTG3cFWfBzW5
	vRvFiLVqAfNnQIzjH6iAMLiTW7zWHtbrIYjPMabKZvmngeS31VWvG1m/SvViFT38N
X-Gm-Gg: ASbGncu4tMz93by4mFJVQXSryzpWXZ4iDA5DjiKFTIrneCHJKykoPWQIJhqc8wqir0k
	34tTSfWrxjOuf/tjJx4hJF4wX37y0InS7u6mIb/8qEQmgKogy8s4sJD4B97oVLZVv3qiFc+9P0M
	Rjz/LysdkGhmJHABxu9MxaMIlr1TNMv6F+OB/epIdZfStvNkuFPlfMmkFb1fLYRCdec0/7Hw0dh
	7tBwhmBH9XGhhH2SPOHFE/g/vNBjF6lHtD6xtfmaS1r8OoDyTOrFJ9VDYIAkI7GqrXjcWLZktLf
	XZj9dC+++RXcm4+hFlKOQsDF503lsgYu4PHMiCKWj3pIUrwo/3HUHYYZDbgy
X-Received: by 2002:a17:903:1547:b0:248:79d4:93be with SMTP id d9443c01a7336-27cc5624f64mr64835515ad.30.1758699066761;
        Wed, 24 Sep 2025 00:31:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENo8x0qp04/3UZ36KVsyuVbTLwCt9epj/KSnNqmr2EfiZ8HnO0G3WjkaZWL9l2LDg3+a9fJw==
X-Received: by 2002:a17:903:1547:b0:248:79d4:93be with SMTP id d9443c01a7336-27cc5624f64mr64835005ad.30.1758699066030;
        Wed, 24 Sep 2025 00:31:06 -0700 (PDT)
Received: from work ([2401:4900:88e4:3659:dbe6:c3d4:6632:e117])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269802de963sm179237635ad.77.2025.09.24.00.31.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 00:31:05 -0700 (PDT)
Date: Wed, 24 Sep 2025 13:00:59 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, linux-i2c@vger.kernel.org,
        Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
Subject: Re: [PATCH v5 05/10] arm64: dts: qcom: lemans-evk: Enable PCIe
 support
Message-ID: <vas7s6i43v32zdpn3skipqwz65rhvzl6zep6szmo7yoxfkeqer@uoqgm7gfjeyi>
References: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
 <20250916-lemans-evk-bu-v5-5-53d7d206669d@oss.qualcomm.com>
 <h2t7ajhtyq3vivbw67tifrn73i4zisicoktsgab76zptxre6at@vl2q4d6i3lms>
 <d2d17266-68a1-4a63-954b-9076db5315a5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d2d17266-68a1-4a63-954b-9076db5315a5@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: YN-Kx3grBDCETyTpbHflyssA_qFONAuw
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d39e3b cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=3auE-PQ2UgY8HC7PFGwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: YN-Kx3grBDCETyTpbHflyssA_qFONAuw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX7FWjiKzjDZ3O
 VzWQl5Vn9Y38KTAev8d4FIiVoQRk9mBfEK3Qk0vqlKAGtdP90rI3SCuRfrw6DIy8dODkxwdhWPU
 CxWkg//OVLnIhNmtQGaCZJ6CkDQO9ht8dfDniZDSZ0Bv9n5zS8o3j8FeELos0bk56eEy7EgnwEL
 W9lmOLe8eyKxydeOJle1XNEZwcNAkpfugwEIaJBmV4WJjXmFrNuRbKrXuYUiZc2SspaIbmL9147
 58Ccax1/zcRVgit+iui0vvPJi20snSOMvB06ZsE9UpQx4uu8WAWU1eDquSSMnDT5MRYZt7P4oBc
 QUHGUBF+KQul9AGjBnpbG7K3g3hI6LUsbiTqsCNVi7mheqNb+kwfmSE+05TZ0udYeuEp8jMBpjc
 en05AR+s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_01,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

On Wed, Sep 17, 2025 at 07:00:43PM +0530, Krishna Chaitanya Chundru wrote:
> 
> 
> On 9/17/2025 1:36 PM, Manivannan Sadhasivam wrote:
> > On Tue, Sep 16, 2025 at 04:16:53PM GMT, Wasim Nazir wrote:
> > > From: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> > > 
> > > Enable PCIe0 and PCIe1 along with the respective phy-nodes.
> > > 
> > > PCIe0 is routed to an m.2 E key connector on the mainboard for wifi
> > > attaches while PCIe1 routes to a standard PCIe x4 expansion slot.
> > > 
> > 
> > Where did you define the supply for M.2 connector? We don't have a proper
> > binding for M.2 today, but atleast the supply should be modeled as a fixed
> > regulator with EN GPIOs as like other boards.
> > 
> > - Mani
> Hi Mani,
> 
> This board doesn't have any power supply for m.2 connector they are
> always powered on.
> 

Not even a fixed regulator? If so, it should be mentioned in the description.

- Mani

> - Krishna Chaitanya.
> > 
> > > Signed-off-by: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> > > Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/lemans-evk.dts | 82 +++++++++++++++++++++++++++++++++
> > >   1 file changed, 82 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > index 97428d9e3e41..99400ff12cfd 100644
> > > --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > @@ -431,6 +431,40 @@ &mdss0_dp1_phy {
> > >   	status = "okay";
> > >   };
> > > +&pcie0 {
> > > +	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
> > > +	wake-gpios = <&tlmm 0 GPIO_ACTIVE_HIGH>;
> > > +
> > > +	pinctrl-0 = <&pcie0_default_state>;
> > > +	pinctrl-names = "default";
> > > +
> > > +	status = "okay";
> > > +};
> > > +
> > > +&pcie0_phy {
> > > +	vdda-phy-supply = <&vreg_l5a>;
> > > +	vdda-pll-supply = <&vreg_l1c>;
> > > +
> > > +	status = "okay";
> > > +};
> > > +
> > > +&pcie1 {
> > > +	perst-gpios = <&tlmm 4 GPIO_ACTIVE_LOW>;
> > > +	wake-gpios = <&tlmm 5 GPIO_ACTIVE_HIGH>;
> > > +
> > > +	pinctrl-0 = <&pcie1_default_state>;
> > > +	pinctrl-names = "default";
> > > +
> > > +	status = "okay";
> > > +};
> > > +
> > > +&pcie1_phy {
> > > +	vdda-phy-supply = <&vreg_l5a>;
> > > +	vdda-pll-supply = <&vreg_l1c>;
> > > +
> > > +	status = "okay";
> > > +};
> > > +
> > >   &qupv3_id_0 {
> > >   	status = "okay";
> > >   };
> > > @@ -447,6 +481,54 @@ &sleep_clk {
> > >   	clock-frequency = <32768>;
> > >   };
> > > +&tlmm {
> > > +	pcie0_default_state: pcie0-default-state {
> > > +		clkreq-pins {
> > > +			pins = "gpio1";
> > > +			function = "pcie0_clkreq";
> > > +			drive-strength = <2>;
> > > +			bias-pull-up;
> > > +		};
> > > +
> > > +		perst-pins {
> > > +			pins = "gpio2";
> > > +			function = "gpio";
> > > +			drive-strength = <2>;
> > > +			bias-pull-up;
> > > +		};
> > > +
> > > +		wake-pins {
> > > +			pins = "gpio0";
> > > +			function = "gpio";
> > > +			drive-strength = <2>;
> > > +			bias-pull-up;
> > > +		};
> > > +	};
> > > +
> > > +	pcie1_default_state: pcie1-default-state {
> > > +		clkreq-pins {
> > > +			pins = "gpio3";
> > > +			function = "pcie1_clkreq";
> > > +			drive-strength = <2>;
> > > +			bias-pull-up;
> > > +		};
> > > +
> > > +		perst-pins {
> > > +			pins = "gpio4";
> > > +			function = "gpio";
> > > +			drive-strength = <2>;
> > > +			bias-pull-up;
> > > +		};
> > > +
> > > +		wake-pins {
> > > +			pins = "gpio5";
> > > +			function = "gpio";
> > > +			drive-strength = <2>;
> > > +			bias-pull-up;
> > > +		};
> > > +	};
> > > +};
> > > +
> > >   &uart10 {
> > >   	compatible = "qcom,geni-debug-uart";
> > >   	pinctrl-0 = <&qup_uart10_default>;
> > > 
> > > -- 
> > > 2.51.0
> > > 
> > 

-- 
மணிவண்ணன் சதாசிவம்

