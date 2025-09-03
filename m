Return-Path: <devicetree+bounces-212334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7CDB4266B
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 18:15:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D84E564247
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 16:15:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 118632C0F73;
	Wed,  3 Sep 2025 16:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fLUzOymx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83A436B
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 16:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756916128; cv=none; b=oxCjap3U3gQ3KDzBi6Cr8MlEsWTynZ7AwJjuE1qgKGa2j8x+KWGEGsr/Y/1Xj6CgXq+pmY3uJ1dizygUzibm4L++MaepnFB6DXYERjD5+JIq0HFH2zr5KUtJ+DcvPdBcDjL2q/WTMzA+PGJVieuX1xMrEM/ZQT0Q+BTTfByqbu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756916128; c=relaxed/simple;
	bh=Aj/h6m6u4l7cbXvG79uFeWtqptowi2jhB/O/8KjO2kc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cdEPVSIsN7m0aac3HozufWj6WBVk05CWMDcp+79RHRr3/yA6iI+2f1u+HFIZbAgC+CySbu2Ctuv2rnEQn07zWRuSw8U1u5KU+3gjh4FwBVtjzfOcwa/XUixuJ/su6jCCheDLRF5aqSuePsSanODAwOwI/P6g68cOftSUhWuBPzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fLUzOymx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583Dwq5D016622
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 16:15:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=PV8I53amMsdpCAWkiS8+8Gie
	vBsDJmqsY8SnpNsX1Sc=; b=fLUzOymxa1pTD013yhxViU4+oqpHhqhdhbTpnE0W
	BKNmHbmS1OA1gChpfxz9CF+iGkqu9lE4eutE1xt61E6DU2Lu1p4dDhnCCEATU8hh
	W+YX9RxUoiZnoK8LS7iz2o1RMXLTGDpHBXoOcu1qoB7wjUgEaCi+LhFe7Fr0Mw9C
	YcU+/wylo33nymbEfC3ddPxMaEbPWjoXa1Xoa1v4TX6i7a18kYO+NvOHDGqLpDgc
	ijtftlnvqdkIwwiWtjIBOVu7VkWU7whPUB6yEidUljnLgxbaCwLFXdEyXaS/Llix
	KzFrW1pBgV7p6hkhw/ofXL3GHi6P8kRD0T6W3edg4Ujb5Q==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48xmxj0wq3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 16:15:25 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7724487d2a8so104056b3a.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 09:15:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756916125; x=1757520925;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PV8I53amMsdpCAWkiS8+8GievBsDJmqsY8SnpNsX1Sc=;
        b=skNfdFb+SWSAtrMbwyUkKCeqkYlu9B5dgdawXLgs7SqC3mk6LCbpBRnYvj0MpWiqmk
         56hgxJt/l5dzFDZ7qUstOATI/D40mZiH+NTmKueVeeu40U4k3zi9vUvmtvZbjR2srr/z
         lka9FGRX5zvVqVP6A+5bxeaBhlvuMz1zCCNHjsz65x+0T1AZy4Mmgb7ioXQGylJeypWR
         LMPatqyXXo5306+CD1x+UBCWfNUm9UNOLJuM2R4Ez29KVlK/SAqDpU57iRBdwb2B4q0Y
         WZljKkgLusBEwMOzS2jsvWZvbcvuWc8tYFDePFZTtJpb53U+UzYMHC9UeEKanPFeTL0z
         V44w==
X-Forwarded-Encrypted: i=1; AJvYcCXUWWOMSkt2+YXiqJSoFI3SdA8VTFAq/eQ5y8mYntV/r1MsdWGo9PSm5nEyHMrzuAkfueoaAcIuJ5u/@vger.kernel.org
X-Gm-Message-State: AOJu0YwVmRkjR2hk5mqMHGjxWRRIVgg0BkcLnt5ZKy1tOZwqsZ8gXkND
	CLWgeIkLKTKU1Bt06mGfU/NGGF4BINPT0Mq55n7X/rSUai5OEMFTtWk4gyjj/xyMD0vxW4IrRo7
	aIw4BRjXGp8a5EomRtKkQBxsJopUvk2Ri++wd69BRUzwzssCnB2sBhKCuNHkH4SUL
X-Gm-Gg: ASbGncuUgHYaZ4V1IIt85c3aFPPSR0YbOiN1fj681Xa59fEx/aJy6l3VgMId/036fKH
	1bE/jYSTlK6dmZG6Wmw/jXXLUXevvDWRsOAaEJFtoMIPqUCn9fZzJ3yMd+tHusbeAVAQLYYe0HB
	J2EdUTlggpyvf8pvTiMoD5+NI+3/acP2HQqodEPh+YF0YNpfwAeccaQQ4X612HxpyOJ+rX1uypQ
	BZ7HRePgH2vOlf8GN1vPZ45RIO2mTfuGQF2Ns5QcbSRnsjsgoh7ez0HoMK6u0hnf04xVOtYrdNW
	hz7WHA27kLK/+JFg/KGHo1wGOky9mmdFFKpuJjzZvZZ9+Me2UZWeSQKt+7ZaF0a/bFlT
X-Received: by 2002:a05:6a20:4f8a:b0:243:fedf:b41d with SMTP id adf61e73a8af0-243fedfd266mr9715502637.43.1756916124649;
        Wed, 03 Sep 2025 09:15:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGM5j7/sKnV77ewl35fCQ4KXYL+IlgEgwziqd/xP7B3RE++ZVU3ZpeVSYzTkVju3Z9dvwZsug==
X-Received: by 2002:a05:6a20:4f8a:b0:243:fedf:b41d with SMTP id adf61e73a8af0-243fedfd266mr9715456637.43.1756916124211;
        Wed, 03 Sep 2025 09:15:24 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4cd073f476sm14803635a12.20.2025.09.03.09.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 09:15:23 -0700 (PDT)
Date: Wed, 3 Sep 2025 21:45:17 +0530
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org,
        Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
Subject: Re: [PATCH v2 03/13] arm64: dts: qcom: lemans-evk: Add TCA9534 I/O
 expander
Message-ID: <aLhplc1XCWGNlnp4@hu-wasimn-hyd.qualcomm.com>
References: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
 <20250903-lemans-evk-bu-v2-3-bfa381bf8ba2@oss.qualcomm.com>
 <bbf6ffac-67ee-4f9d-8c59-3d9a4a85a7cc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bbf6ffac-67ee-4f9d-8c59-3d9a4a85a7cc@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAzMDExNyBTYWx0ZWRfX98rPkrmD6Dv7
 YY8oHqVZYcTxar/eIIE0SQROQR8Sc2+zv268GHXRrnVfEpzI126SLXbHcsudWhtS/hnRLYpYbs7
 XBqSF31O4tb6cXU8INf9QUipi0VIpNdpRwKqLGrC0S6QhijW0STll/0c/2CyCKPCHeqpIBRyomS
 aZx4lpIWuG25w/FV5HpVH2dFdQrnEAJ65PLqj1hQ3EerwSdV6ALL+jJHOmcGKMYRP/qvDqsL/rB
 FdERdyQRFqWpmDh3jyna61MtHaIKB/+ygZEvkMaJpd/X/+gX5A6Gq8zNyL2G4wEA4JkQR86Oxo/
 dNknr7Vj7R3OhnX8RMKefsQ/gHx+6dyOWUEX4Gx40nXILuPkJN2Yv8ZkO0ZM9cII32mhE4O0Dzv
 Al4veAVF
X-Authority-Analysis: v=2.4 cv=a5cw9VSF c=1 sm=1 tr=0 ts=68b8699d cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=mdWu549IrBN_hmWUEDoA:9 a=CjuIK1q_8ugA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: vKQnvP457gA3TGBNSMPFzFZzk6ncBT-h
X-Proofpoint-ORIG-GUID: vKQnvP457gA3TGBNSMPFzFZzk6ncBT-h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 adultscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509030117

On Wed, Sep 03, 2025 at 05:48:56PM +0200, Konrad Dybcio wrote:
> On 9/3/25 1:47 PM, Wasim Nazir wrote:
> > From: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
> > 
> > Integrate the TCA9534 I/O expander via I2C to provide 8 additional
> > GPIO lines for extended I/O functionality.
> > 
> > Signed-off-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
> > Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/lemans-evk.dts | 32 ++++++++++++++++++++++++++++++++
> >  1 file changed, 32 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > index 9e415012140b..753c5afc3342 100644
> > --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > @@ -277,6 +277,38 @@ vreg_l8e: ldo8 {
> >  	};
> >  };
> >  
> > +&i2c18 {
> > +	status = "okay";
> > +
> > +	expander0: gpio@38 {
> > +		compatible = "ti,tca9538";
> > +		#gpio-cells = <2>;
> > +		gpio-controller;
> > +		reg = <0x38>;
> 
> 'reg' usually comes right after compatible
> 

Ack.

> Konrad

-- 
Regards,
Wasim

