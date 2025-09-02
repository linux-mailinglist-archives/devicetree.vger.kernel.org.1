Return-Path: <devicetree+bounces-211747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8028DB40657
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:15:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C77C481BCB
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:14:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CC55303C97;
	Tue,  2 Sep 2025 14:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eE4ouxNH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97573009EF
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 14:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756822490; cv=none; b=Oc1yd5OzR+CQdw/Kb2U2zGk3A59suRog9eldFLtjfMbhDenlhpd5KQf/Wiw+bsOExMq3pqLCPeX21OtHeuej0HtTDmQYhLGkhL6SxLK2FmZ7/+55lnm3ZA5mMgLcZ7BzD6/QswCQTD/W0fnnrjvc94soG3pfTF9TUYceOcKOpI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756822490; c=relaxed/simple;
	bh=ioDj9OKZUZG9SXyaVD3LjRoWMvd0eSILJ9nbZmtaXWs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NwA2gQ+RO9cucJiNphUli5eOL8cZdRimHtA1CEKhmjbUQQmRdhuW8lSA1sovysRcCa6oZnb2W+UwDF8Hw6YSIllhpnjVLmPqETxtNuj4GRZa806WC2iNnL4TmRJ2DKzMIjaesrXWWqfiA46wcWv9qNEOqcAhhgdtNrOODhm0AK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eE4ouxNH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582B1ORm021747
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 14:14:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VPDjroB3ztY86zaEZex6BUAX
	LTZV4LHBrhebE1WbTrA=; b=eE4ouxNHvYPJFunGb3NDXZeOcBscQ8CmeQagYekp
	yO4abQ+l26jWSNJRHpE3T1tCtAxOegJNHqzK3wRbqSFa62khRHUIriZY1tWrZ4oH
	/YvrQ3B9YlFKnl1l0/ll654GrFsHGiP1uHs7zr2XA3YbZH/X1k1jUBDxXnxyfjSg
	05lFm+QR0IfmgtR4uW2+3jxIN/RchI0TXTUYUPksz1Gtu5EisCpgAoOMTNS7wl0l
	VaJrasP5EstOTIcRzAmP/8wtieg8Z+B3rW68R7kOEtlP0K6OVAMd4c/9U3RT4IZO
	LEQb0M1dI5AsQPOkS+zFZrSWRbOTwtM/9HrERdyVmUR6+g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ur8s0542-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 14:14:48 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b320a0a542so56040291cf.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 07:14:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756822487; x=1757427287;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VPDjroB3ztY86zaEZex6BUAXLTZV4LHBrhebE1WbTrA=;
        b=gYZ/xcWY0YXJcqHgdpBBFyINriObHU5OK/ZX5HhcLkeQOdcGnzFVzwXelXS/1lgOOI
         hq/j/y4aNrBhVCij26+48C/1ZMIdBWWuOIaEg5RArPpHYh7xN1iEvgbvT6K+/Va7erbM
         zBberHEqNE+NfF8C49P9nJFq+8XsX0XtFNdNJtzNb5zuMJnQflXf3NSvBvAjOZldkpfr
         zQPL0H4Wp3qNTlW1cxDwXv8IYsiE9EYF19IuYGhFkwi/D15G0+oUfMVbwr9hD2dVplzP
         NJCnREFoYCIkuNfJ8sQ8gti4e7yZhbPXGYQXr5YM3oj+PljfTcpX89q/Nhes3bZ6FWYy
         b+aA==
X-Forwarded-Encrypted: i=1; AJvYcCWtHAOX9/DlejSGir3EJHrM5/KFBr0eovuLuvOdZsk2AHgvlGlZ9hV3E48BoBqB0ImP8qJXJj6vGFN4@vger.kernel.org
X-Gm-Message-State: AOJu0YxfTZdExrNyGxHeJz+tVY3CpJPozcC5cOS1v7PHU4YmboTxqPak
	jidpAidyTlM9xHSN4ZPtHvhywcBYXfXMFMZCwbL6Wu9ktt9P1djzqFH218zN6qrQ6Kbtq8RikMP
	xug0aIId3Pdh0FoW4uexuJtLIGAaGPpj+mwdw76rYWzMFLALORRpOhvYV19jk0x0I
X-Gm-Gg: ASbGncu9MnlQrnjkQwAMpexn1S3BF9UYHQqHGgrpvVSuQ+KlhgXCd8BugA7gZ37PChK
	C7FdT778PEQYf52y0D4kdmbHnIOaXpqnejkW2DCKSfQkKucRueGVZyAUyxyJM4PAlz7E1I6WqSI
	ogSN60uuu9fC+Y/JOzEhCZor3M91a72QxvnA7d5qFyXocj8MGoFsFF8y5rqrRZB6dnTGqaDHT1V
	4NeLQtx9kPGvzBOMEVAMya96TSJe5qnp2nvyx1T08HQR//T1Gr218H11gi7BbHC2NpyuxrjZacw
	FVAXt5ApUNn1Rk87N2/y3PjTW9IwWq46zELH/vP9QcqE9tGu3ilj7C7glOzFRVCao1c7cyTaVLF
	GzWozvM138ufuec31UuGGFYbeg00NpXHvvXW+XoAg3PrD0S5csPiI
X-Received: by 2002:a05:622a:5e06:b0:4b3:4325:c921 with SMTP id d75a77b69052e-4b34325cbbbmr27635041cf.2.1756822486456;
        Tue, 02 Sep 2025 07:14:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbkPG/3GwoZ63uDfguv+KuDMTZdCIFwLNXUWVjBJQbsg59aUFidJtYZdyH+pYNyJfobXe9Gg==
X-Received: by 2002:a05:622a:5e06:b0:4b3:4325:c921 with SMTP id d75a77b69052e-4b34325cbbbmr27634531cf.2.1756822485713;
        Tue, 02 Sep 2025 07:14:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-560827a020dsm711923e87.118.2025.09.02.07.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 07:14:44 -0700 (PDT)
Date: Tue, 2 Sep 2025 17:14:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RESEND PATCH v3] arm64: dts: qcom: sm8750-mtp: Add WiFi and
 Bluetooth
Message-ID: <4yt5lubdcvepqkstt44j4h6t5bxbno4eajevvkywj4y7ypl45a@wog3gteubbym>
References: <20250902140018.247209-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250902140018.247209-2-krzysztof.kozlowski@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAxOSBTYWx0ZWRfX0H3fS4LhnzRF
 OAwgbJDjY/iJysDGmukeKs3rMOEhmTR5hMnb20TibhbghOzAijSQr1qkeynkHjxvkIYilPnGMFx
 7XvwyR8nG5X1UlrJ2emwaweQucyqPCMWfbfGNAJDiZvit/fgQOwTwlKzReDvVbhGtgcaI9Gkjgl
 xMyyTyFvHFmCaPU0HO4Z9VHoZT+0alSrpCK+TsIvYK5g+BNemIBakPP19bGGYDEGiwcpf+cPZ3Y
 87Gqx+BaNuUDiM0uck8JbUDsLaPPGmyiSPzoCBw10TGE4tCwmCUhDCUiLduZgO0R6A3L2eY1FlX
 eXFbfafCJz7o0e58abp24ZX576CTQD730hvgOdLm1a7C++N7nD1UXowlT1gQUcbfaOfV4fLa/Qp
 kNBw0JB4
X-Proofpoint-GUID: b5Xtqv6QueYhjCSRgs6MNmOrqsJM760s
X-Proofpoint-ORIG-GUID: b5Xtqv6QueYhjCSRgs6MNmOrqsJM760s
X-Authority-Analysis: v=2.4 cv=PNkP+eqC c=1 sm=1 tr=0 ts=68b6fbd8 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=IIvv0vHZhC9vjs7kOx8A:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300019

On Tue, Sep 02, 2025 at 04:00:19PM +0200, Krzysztof Kozlowski wrote:
> MTP8750 rev 2.0 (power grid v8) boards come as two different variants
> with different WiFi chips: WCN7850 and WCN786x.  WCN7850 is already
> supported by the kernel, but WCN786x is not.  Both of the board variants
> are considered newest revisions and the difference is only in MCN
> numbers and internal codenames.
> 
> Add WCN7850 WiFi and Bluetooth to the MTP8750, stating that this DTS
> represents the WCN7850 variant.  The S4D and S5F regulators should
> operate at 0.85 V, thus adjust lower constraint and regulator name.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v3:
> 1. Add also PCIe nodes, because they were not planned to be sent
>    separately.
> 2. Drop pieces of comments as discussed with Dmitry.
> v2: https://lore.kernel.org/all/20250811131055.154233-2-krzysztof.kozlowski@linaro.org/
> 
> Changes in v2:
> 1. Add missing &qupv3_2 enable, so Bluetooth works.
> 2. Adjust also S4D regulator constraint.
> 
> No dependencies, can be merged.
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 147 +++++++++++++++++++++++-
>  1 file changed, 143 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

