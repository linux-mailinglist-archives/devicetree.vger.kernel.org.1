Return-Path: <devicetree+bounces-225249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8128ABCBD96
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 09:02:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 366C6540441
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 07:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB5131E1DF0;
	Fri, 10 Oct 2025 07:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bPrEUSRg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FA91E7C12
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 07:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760079731; cv=none; b=aMrb8xAol92BH4Yww9678JpClZSDfzDX0prnzG32fJvlVfmSgCO1/M0n7EV8WFOwx1DQqvNS58HQwItRF8Lk+MsiEUi6G/yF/6MFMkYBIuT3b77l1wTP3JVmPgLOw2+IfxHGbkhaEMEiw2Pm6PK6urphkHwLvWvutjVvc4SI030=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760079731; c=relaxed/simple;
	bh=4vvvEMb2vuNn8UVT9VIvvwNLOeHP8FoAvPrXeBK9elU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P3mUNmquRt5KDUwjbByD+LkRekJTJxQHXLaU1vEEQ58aFWlWnc1n1x/LIo+v5KQzKzpTITh8xgalR2t1/epA/66kyADaLV6bwagU4b/IKSle3yEMxx7uc/DJSdVqJ38SyWSTaT+7B7kQrB7ckHIetrol+Eg3qtWCluBzo4fgY7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bPrEUSRg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59A6XMpE009406
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 07:02:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dQwvd11Ba4OZZPtdkUFVNZBI
	SyWrAhGDJUfi6nuz7rM=; b=bPrEUSRgzrYc+3qyDhpzEtMX0lGgR34YK/st6XmK
	/hXfeFDPAEpLbIz7Oj6mffsVD4tTsH4UDMQ68xFLSY6V9DGtH+G7BJzCoLaA9Zo+
	bdG8gSiA2AfcdnWS6NCURwD1cJXt2wJuLyHpV3Duui5ZQMDKXtSS4lKgXxHEZ22O
	XdvKxE29Kg1b8zUzYvj4v60/CtcAvXG1iNtiFLCrlMckt93lfNBKsgXS+MKGb6Ky
	vgg5X2EaFZx2eAFj2kAN4dze2eXDXXt2oKi2ODZCORdlC9ZgONUGjuq33eDniGde
	WNHiSjlAQDoqxjDVq8PmD8wHQ6CKX1K0RiOxHvdpoAzPGA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kne7q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 07:02:09 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-28e538b5f23so35819115ad.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 00:02:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760079728; x=1760684528;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dQwvd11Ba4OZZPtdkUFVNZBISyWrAhGDJUfi6nuz7rM=;
        b=ovPWPUzXkDw6ywhiwyxwkFsCWB79rpSyUhkEqJeWgNx3uMA9Lw7CfYJJVJatsiDFAn
         lYgUJ1zWcGoWN6Mit7Qx+YBwowJcSVnoeW7E2TsmNGUZc0Z1efHodyzupjPog9svYpR0
         A4yLdwuhqvbTleQH728z83mPM4UaFWHtcqXNsczKJAaDOITVD+42Ed2gS3hqI07OjGHe
         pdG044NHj0spRuqb6WzezLp8oluTFZROANPcKXOZGbCngUYCKlfeiyXZoH6JYIxlIXkg
         g1oG/n2bIddaxI5OvW4caigmE33KcTpePuYaUI0np0nci82+G6dtAGmgGOpri9YY+BrB
         IZRw==
X-Forwarded-Encrypted: i=1; AJvYcCUkp6fFxh9OlOSqbabWYjxdr4UNtStJpi6H5YEMD25VZmcu/8T6AA0srJqW8w+1O9JKiJ2byl3hHQYi@vger.kernel.org
X-Gm-Message-State: AOJu0Yysu5TP4LTq5ZjO1+6+hym87UYhlCTy9Hm+dKr1J5ZvxiB9LOl3
	p2gW0+uIqL7S20S9xUk6cWB6Pyp/Ll+r6NcXKAu5R7if925RNFPlOOjZqoLPQWMp2NpL69tjFGm
	K6oSQjKlRzR/YatGyyiEmXYO4JNqHyK0jVq9ZKv+vDS1RzxxAk/mVNpGZ+OBojubE
X-Gm-Gg: ASbGncuU1GedyGQN6zRRd/sF33Be1RSTY3hVIIwazNrHXXk3rrlIxC57svf3SaP2agX
	lJAX5sPT6egXeUJGBXGRQJX1IAi9XBbf+2clo4iwg5bPvCrnUzNsCyZMQwrM6W5Q+DM3CHMkL5L
	+W5zx2/coeJFA2aS1rfsnMVOMVNJGonit0ZqCOnJi9eYkV7iK+fNumApPsuq5oWWGc4Vf1zkLtY
	24wEamto1Nja7kpKvrONy8efy+bcK8c0r/cTrIs5Ul6FJIaVjgNy8IQRl5MYn/5+zcR7LXnMXBF
	JWOu5V0jNCG2MJSsqT3mtjIFuMVgRWKThxQ2KxF2Vy+Jp6dM4zo/q1kXGpBIHdpHl9DuMvXEFWy
	S91YQxJgrNFQ=
X-Received: by 2002:a17:903:1b4b:b0:26d:353c:75cd with SMTP id d9443c01a7336-290272409c7mr142514965ad.21.1760079728467;
        Fri, 10 Oct 2025 00:02:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHXYefKjkw/AY2CktNp8R5G+EiBMLqaA04w5BsZCP6mW9dFQLgjjEQp8WdnscP3rBXH2Ry6Aw==
X-Received: by 2002:a17:903:1b4b:b0:26d:353c:75cd with SMTP id d9443c01a7336-290272409c7mr142514515ad.21.1760079727974;
        Fri, 10 Oct 2025 00:02:07 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f070ecsm48098155ad.60.2025.10.10.00.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 00:02:07 -0700 (PDT)
Date: Fri, 10 Oct 2025 00:02:05 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Subject: Re: [PATCH 19/24] arm64: dts: qcom: glymur: Add support for PCIe5
Message-ID: <aOivbf/U0FluPsZj@hu-qianyu-lv.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-19-24b601bbecc0@oss.qualcomm.com>
 <75d8cdc7-60c1-44a8-bf6c-0fb1ef38dd70@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <75d8cdc7-60c1-44a8-bf6c-0fb1ef38dd70@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dojWylg4 c=1 sm=1 tr=0 ts=68e8af71 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=z4uItHPOzOwcMgdkeGIA:9 a=CjuIK1q_8ugA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 9LV15BWN7yXBY72lobofQL1ayjkRlMlU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX9zOncm1SRfEf
 YVemn5G4QE2Q3Ss4u/SPckIYl9NZgz7EPxiZtdXwqFxeIbMQLmGcuPZx/azzliKTUkf9Ikjjbhg
 UJXPDp5HkUzEGJ6WHILqvcnRgApUGTC/5MKJseuoEUjhqKXNWk0XQa+s9JpLon65v6uhAqECWLW
 rV8RGpN/QIDtw6WR/E+PHxZK1yjqbu/Y5ozrihPxdrR4iW7CoLsT7WdqlRqfVE/z5LMQvBa43V2
 eu5T6iLQO76QOD9/pWXJGm3eoQdZ80RKPdiu4aoGKun6uKk1Kbv9sGOpVfjj0Jsg3eOlOR6X9A1
 aNKT3MQKQIIk2LhXMU9/LZYa73FrrsJg2qCy1qx1X6UQdc9jRe3LRQYkpDOp4i9gRJumxVk+dDq
 BlLEERAochRp+FRPQeLu1m9SdaJo0g==
X-Proofpoint-ORIG-GUID: 9LV15BWN7yXBY72lobofQL1ayjkRlMlU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Thu, Sep 25, 2025 at 01:32:04PM +0200, Konrad Dybcio wrote:
> On 9/25/25 8:32 AM, Pankaj Patil wrote:
> > From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> > 
> > Describe PCIe5 controller and PHY. Also add required system resources like
> > regulators, clocks, interrupts and registers configuration for PCIe5.
> > 
> > Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > +		pcie5: pci@1b40000 {
> > +			device_type = "pci";
> > +			compatible = "qcom,glymur-pcie", "qcom,pcie-x1e80100";
> > +			reg = <0x0 0x01b40000 0x0 0x3000>,
> > +			      <0x7 0xa0000000 0x0 0xf20>,
> > +			      <0x7 0xa0000f40 0x0 0xa8>,
> > +			      <0x7 0xb0000000 0x0 0x4000>,
> > +			      <0x7 0xa0100000 0x0 0x100000>,
> > +			      <0x0 0x01b43000 0x0 0x1000>;
> > +			reg-names = "parf",
> > +				    "dbi",
> > +				    "elbi",
> > +				    "atu",
> > +				    "config",
> > +				    "mhi";
> > +			#address-cells = <3>;
> > +			#size-cells = <2>;
> > +			ranges = <0x02000000 0 0x7a000000 0 0x7a000000 0 0x4000000>;
> 
> No I/O space? We can also add the (presumably prefetchable) 64-bit range 

Will add I/O space and prefetchable mem space since we don't know which
device user may insert.

> 
> 
> > +			pcie5port0: pcie@0 {
> 
> pcie5_port0:
> 
> > +				device_type = "pci";
> > +				reg = <0x0 0x0 0x0 0x0 0x0>;
> > +				bus-range = <0x01 0xff>;
> > +
> > +				#address-cells = <3>;
> > +				#size-cells = <2>;
> > +				ranges;
> > +				phys = <&pcie5_phy>;
> 
> same comment as on the other patch
>

Will change the order as you commented for kaanapali patch.

device_type = "pci";
reg = <0x0 0x0 0x0 0x0 0x0>;
bus-range = <0x01 0xff>;

phys = <&pcie0_phy>;

#address-cells = <3>;
#size-cells = <2>;
ranges;

- Qiang Yu
> Konrad

