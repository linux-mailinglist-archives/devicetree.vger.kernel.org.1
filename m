Return-Path: <devicetree+bounces-221899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1111ABA3ECC
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:44:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A2E71892612
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 13:44:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E0412F656A;
	Fri, 26 Sep 2025 13:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Uq59JsOA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5AAE1C8611
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758894256; cv=none; b=MbF0Yu8baI225n8LgydFGw/eNocijbJrWIdQekrqOiWCExc3p3vuasGWrmM6y3BlCmjMn/JfB2BgPQVR2HSdf4uWr9SqGba+lzshg429CsZCGTk8j0PQ8jKdjnthodmNqw+ttU6gxUU6sKpb37EXppLsCzsE7DQb9Wb2sStJIMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758894256; c=relaxed/simple;
	bh=rdkpd5UFhIvMoKkheDu6j7UaKkgSWom4KRbRDqtUP08=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ppGNPZ0xUFb68MD9BlnLHHty3kmEf9etlCBUqI3MgvcjVoaE2eQqsC09p11FYUFN3+I0NrNuSECC4+Rf5CPqXIsXCpGfedjl1ECPxk62eDTvT8AryJyNnuwfogXAsEyZHs2Q1ThqMnEvY+BJvHSv+4+CgO2WoJNQuv0yDR1Q0kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Uq59JsOA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8vjEr020776
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:44:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zcW5ackSCGXXGsejxqAPsV2N
	YhpDYtWknaGVzrpa33c=; b=Uq59JsOA+QedVYO//BqllapjrIr5Ts+C6i3brQw6
	LeLmtGwhvPzqfltyLV4fjStKZRSco05xEoG0/Uh3R9wozt+eFFpCXgaAQc+IkxNL
	Z2vl8djjXLwdwVV5MFbsCuuN0HIDgb+A6NakIoTK7czocxS0KrlWR2JdFFi3lv6c
	j+MqOX7817azKee6BGSFX2qncpEbMyp9mKNBxadwwJ8zLZM0ToBD02H3exn+8q9z
	PoZxA0iUzZqrckHEV2ybsd0QBKyv44DyhagC3M2mMzNSMcRNUEmO9RIFUrfQL8BP
	K0wBEj+cQo0W1cbAljfLnY2JqTQ+Efe1pf9jpOJ2FnoL/g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0qu1s3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 13:44:13 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4de35879e7dso9233211cf.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:44:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758894252; x=1759499052;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zcW5ackSCGXXGsejxqAPsV2NYhpDYtWknaGVzrpa33c=;
        b=dcl7BQyhOH51Tz4nrxTp5GPhfBUjYU4J6aCeeMP9S/E1DyuiGhzKpepoR32pRtG7IH
         3Gz9QZjTjkMYQRiXHf3TFZQLCRNtz0cyELe5GxHoCR/v9Wztathrs0/MNuBYB7qWuVj+
         ig0gQBSlL0B07vOZkSI185PO2qw7jZal5k0SWCK8dCZSQWSIxgHCKax2hydZZciFRKcy
         ZKv3sKHF7r58T+XpPwDgBBtNWpC+xaDPncq2yDSGcstkYrMW8h42XYIaRVbTQtYlUbnQ
         nGJXUaGyvfIjL5oi5EpeL1QWnR8K+Qh6CzzXwtYCLE2jt692PzMxmXaTz5XjgcPlQzdu
         UICA==
X-Forwarded-Encrypted: i=1; AJvYcCUdggSsU9Wx20noOhFwyqTzrsqdVCUXnW+WiuPKvt8t0B9klxP/NWB8J4OdveQVJUVbFxo3HL4fEDDY@vger.kernel.org
X-Gm-Message-State: AOJu0YyMRrYDO/HQdcWGGoonhuzna3yLNiN62+0IzjJQWRgZPoAJjGLW
	dNXfMfG4LPuS0NwhE5IldJqOIHxNdloNWKYTAoeiNdfJYqoD6azpV8T2GhC2H8ufMnO8sWXxuX3
	uCn+wJp3Pzo+M7fMD1vZ/dHzXQqkRBMoZBuj7i5xP4ubdnOkkFWT7+ypGCfBYYH8J
X-Gm-Gg: ASbGncvQF9lSb0mCi3ejpOuLrOTwbEMitdZ/M/4iEN9BtHRooOj5lAQM1IU78IZ1qJL
	K8CHwnAahFxG1sKKm6fXos6cBuVi8kmFx50CpCNwUcCbvCmNJgqW6w7PSOnkEfPLW09qMdX4RWN
	Ac1U1jUiOgOQn8a3XG5M9KEoSPEw2OXHqrxGjkZQXVaBq2nxA0YbHclS+RTU9sJPoZ147PiRwSM
	o28FN288C8vYnAhlHmSh6VpSX/g4PRDV5+J1NxN3V38cKyL2mCantOXXsvJyJrINfmZ4FI6TIXC
	wTb4E5qi1pT6t3h84hjE2GlJg+x6X6mlN5lHJR2mzvV6zRpOLBSHsp1eGuxlHSPs/ORu/m6yhgN
	f4sSEG5S8wMz1WRbOHU2LFCEgsE0PZYaia70xRa5tNYMFh9KkbGEG
X-Received: by 2002:ac8:7f96:0:b0:4d9:d5b7:8798 with SMTP id d75a77b69052e-4da4d22035amr112094571cf.63.1758894252450;
        Fri, 26 Sep 2025 06:44:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnptO9V665rCbkqw0/QJIvszxBFryo8Yk73k9re5pF1c2Mu0gMfrvwGqDKZNzwvy4/lECGEg==
X-Received: by 2002:ac8:7f96:0:b0:4d9:d5b7:8798 with SMTP id d75a77b69052e-4da4d22035amr112094051cf.63.1758894251760;
        Fri, 26 Sep 2025 06:44:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5831665640bsm1832691e87.83.2025.09.26.06.44.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 06:44:10 -0700 (PDT)
Date: Fri, 26 Sep 2025 16:44:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Luca Weiss <luca.weiss@fairphone.com>, Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 09/14] arm64: dts: qcom: sm6350: add refgen regulator and
 use it for DSI
Message-ID: <mmtoashmdv6cwwwdg7rpbk3kkrjddej6khdzlcyo5qb47lfunm@osemmb3z4m55>
References: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
 <20250921-refgen-v1-9-9d93e64133ea@oss.qualcomm.com>
 <DCZZV93PMWRZ.1J9IZBZYP5RGM@fairphone.com>
 <4d815ed8-18db-462b-80d9-9768b51a9788@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4d815ed8-18db-462b-80d9-9768b51a9788@oss.qualcomm.com>
X-Proofpoint-GUID: ZoAAdilORSGwOlU7pFVrxaDRYB8p04fb
X-Proofpoint-ORIG-GUID: ZoAAdilORSGwOlU7pFVrxaDRYB8p04fb
X-Authority-Analysis: v=2.4 cv=api/yCZV c=1 sm=1 tr=0 ts=68d698ad cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Jt6MlJ8Wm96tuLkM1H8A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX/0Ee0BAcXE9d
 8YPG1rCOJ2J7xIilvcgOxirvvfu5DamKND101JHxnRvkxABujhiO5wydL2rG5QFRcZDXR+w96Cx
 cNbESKiXyEEVvBJmaoCbZ+96CXoRZpkOY0+4Z25dG0XzG4jwIf1jP8qUeY48p9SXM0kuRy/CejQ
 ICc240aQgyoB3VbDSEk72BkQYB8Zu7LsHOOeE3WIu2ZoVzBIT2BstL9ip1UjJ6+UNn488kQMNaH
 Jtk72blJavJERLOVuV4kxrg8mD9Iw1YSAT2PXyK8Z81wdBid45L2awlPalLikNUqyaHpfIsqiiF
 lNPuK7CHC8pLQQYiWVFV0R83Q/qhng6IttHv8WKNVhV1F8OFmLkJabH2oDt8fbOun6V8O9DzPjG
 P/G2a1gK1scyOMEorlSudSmBoU6p7A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_04,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 adultscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Fri, Sep 26, 2025 at 03:27:24PM +0200, Konrad Dybcio wrote:
> On 9/23/25 9:17 AM, Luca Weiss wrote:
> > Hi Dmitry,
> > 
> > On Sun Sep 21, 2025 at 9:09 AM CEST, Dmitry Baryshkov wrote:
> >> Add the refgen regulator block and use it for the DSI controller.
> >>
> >> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 8 ++++++++
> >>  1 file changed, 8 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> >> index 8459b27cacc72a4827a2e289e669163ad6250059..dd009569a6683a25f13b068e3e0bd8746b2ac501 100644
> >> --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> >> @@ -1768,6 +1768,12 @@ usb_1_hsphy: phy@88e3000 {
> >>  			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
> >>  		};
> >>  
> >> +		refgen: regulator@88e7000 {
> >> +			compatible = "qcom,sm6350-refgen-regulator",
> >> +				     "qcom,sm8250-refgen-regulator";
> >> +			reg = <0x0 0x088e7000 0x0 0x84>;
> > 
> > Are you sure the size is 0x84? Downstream and hwio_bitra_V1.cmm would
> > suggest size to be 0x60.
> > 
> > For sc7280, hwio_kodiak_E5.0.cmm does say 0x84 for refgen.
> 
> 0x60
> 
> moreover, I see that there are two refgen regulators..

There are two refgens on each of the platforms, but I think the other
one is used in the automatic way. The HPG only tells us about
programming this one.

-- 
With best wishes
Dmitry

