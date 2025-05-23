Return-Path: <devicetree+bounces-180074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 653C2AC28B7
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 19:34:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22C7D4E7397
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 17:34:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E47C22951D9;
	Fri, 23 May 2025 17:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m+b0J6tX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734FC293728
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748021659; cv=none; b=j5ZyZWoPjgNVYGgWOvNLL87ApSHjMjbBhqP3GFHS07QoEwDf7dcHhv7exRY4g3NG/IKNq4hPq2yHJYwZ8vwmILsuJ8d7AVfkZrGrHWD19m1MOLHfPlDmVhbMKXfO8trUn/gmzPYgQO9W2+aX91m92Q7XHRF9qBZdYGg8YLrHYQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748021659; c=relaxed/simple;
	bh=R5hPgr8g6KF4vV9/MNI6Uvrws8BZ2MQ56xJgfpRQ1mg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V+qJdQx/6hli86yrc+X+6s2wm9QOSeEeM0u2b7tb/wBzZG4Rc0kpJkxhLBM8op3tm9xmR1nwlJCaaFRPoBvOjM3MDe7N5K5ZjdEUMoJEEiW++hEocoKiFQ3iHWsHq6/s+ESPVqAq+E8rA7sxPeypxeFdrUQcPW88h+v0B5rDhYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m+b0J6tX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54ND0AqB014544
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:34:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gMc8tnNtub36PEixyB/6BFjb
	qupY8X/snLnvo/lsW5M=; b=m+b0J6tXM0t+5Y31/71h1MUu94AI4yg9aVWwXaPV
	x2zAHhN8TEob9doriadqXHYq06+6KFKHOA4HQK+OcSBydLEomFIt21SD+7wt2yEf
	LdTgdV9ATSux5ILgeBaQz+wkS8jhEo6ZXQywoxgRbBpo0LGWCcL9qitahdqmwvsx
	jBcnS8Zu4Czh5p0fdLrgqC62xAprqVlG7N9EnnEVmPHGI0ZAsVU63YteejNhGTnZ
	8dSDM+EWPj1sf5nkRhKER/Oj+mPaLf2qx5bgroUBFbLGpTOe6A9i80Kw5XD77y1p
	sgmjjmZO1kb1TWwkmQo6ahssu/H5egq3HM6+yt07/GkMVA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s8c29dxn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 17:34:17 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f2b50a75d8so1188826d6.0
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 10:34:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748021656; x=1748626456;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gMc8tnNtub36PEixyB/6BFjbqupY8X/snLnvo/lsW5M=;
        b=MG8AbFStxQPRI1vIrGILNORAQ1oiaI+gPL0zkFn+EXjbIrzTt7jO4RfmwPbdMqUAdb
         kEDUC4a6hM3Z0p1DwFy9ZP/anPkhffIpDbAj9BkGjL2GTRZ9Hlkj7YrgZ91YkhS7pdGX
         t6+Ra2aL6GHR8S/L6rx5y9lZeDpPd1lDMuoEYSDv9QqG2rhwxk4FcU0bsC5YFhNU1CtS
         WalTdDf4id1pLvi1tHoWNqfM6ewi7di1df6JBE248uWeamvuq7GKfGbWmY8LO3iXfWSk
         zyyCZGQQw0eoRT2FY7osDTxsj2U+ANWXI827IDV8syXSnUq+e+WuwRdUkaVoksyuYE/z
         +RSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsZefoKmiAOB3pL1VFD2tH8Cl8xCokUalx0LfdAnXwKvvRM1duMhylPptxqJRCtuVz0ejWKt3LPnlX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/mu93xmGJshUb5no9VDJDCfuqmRxAMIduwOk/CKvm4xdGDYJB
	LUbAgnplsfvcGYjlmTFGO9Jr+uXYI94RWS6pgj95LhW8pQixWfBLbJJXvDTpUpoZ+PZU/HLpJl1
	LRItVeyc/VubhZSWMYE+zqI38hgJj6NUaP+xCWYT1zUzSvwTHU4b69DyydB0fMGG5
X-Gm-Gg: ASbGncvy+5lUoxcavHuxT3uDzG9ThXDtLzhDGKkAk0YvdNttLnXUkQE3fFlvn14M2rV
	ZXgl1gChUCYpJBfQ/O4bJqMiJTqael/FemubgKad+XHSv66u3yxGstVr/tLFkPOJLFZrechd7Bb
	2MiQhJv6EGPkK1mqUu8b5yRt+d7jHBLqmM7b7aGVELw2n7SCUiU+j4UcNGx2OeoH4dL3hIXOZVx
	HhTcZmrn2mxUwczf9NMIUGATWEr3pcp+k65Z6ibHeWrJvJphyt4cjBqN+g/4FMC5aYbS7vLxFQf
	cyEEepsiQk3HC2WWFMYSghRB8hscrRpZhAlYFr3CsgstL14tYlpn0dUH6YBq3TR9fmXg6SKNVzg
	=
X-Received: by 2002:a05:6214:2586:b0:6f8:f1a5:e694 with SMTP id 6a1803df08f44-6fa9d34c88bmr4703906d6.42.1748021656350;
        Fri, 23 May 2025 10:34:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEcfxuoSftseURZRDsLe+y4Vv11HBXw7kl1X8xprRtc28GdvrSX2JxAnsHDAi3vNm+Nwvs1Xg==
X-Received: by 2002:a05:6214:2586:b0:6f8:f1a5:e694 with SMTP id 6a1803df08f44-6fa9d34c88bmr4703596d6.42.1748021655973;
        Fri, 23 May 2025 10:34:15 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e7017f23sm3941283e87.118.2025.05.23.10.34.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 10:34:15 -0700 (PDT)
Date: Fri, 23 May 2025 20:34:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 06/10] arm64: dts: qcom: sdm845: Explicitly describe the
 IPA IMEM slice
Message-ID: <achy4wt6dqamghzwydwvogisljmfe3bgt3ku663mengoxf5ers@nyti7qnrkyam>
References: <20250523-topic-ipa_mem_dts-v1-0-f7aa94fac1ab@oss.qualcomm.com>
 <20250523-topic-ipa_mem_dts-v1-6-f7aa94fac1ab@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523-topic-ipa_mem_dts-v1-6-f7aa94fac1ab@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIzMDE2MSBTYWx0ZWRfX31niYFbF+nhA
 kUgL5n/BGrT52xNbS+W95efqttP50z42U12Ew+3tA4syjfexhGmMFlQai+mC3f2VnOIxbh+5z2d
 QA1uomJib4EZ5N+b1z6mNqJJPwFdzgKT1m1R+rBuanHXs+beBM+vL3cBmt28BoVkCuC4loAJ+ah
 C9t8xsn5ugGWM2GhdCUspnooA+bZkWaZqbZHA5uRNlat/jNhU1BZIgea75MZiuj5yttlDrOvbra
 TnV54iJfvfJb83U9M8qYxPg+iyjUjoH1nAb8ipNjBxeYKTo6YIZp+NjSdfcFz5lP/ss7pjymd3t
 U/oupg6ESXZH/QX5wGqwpHtt8UpuBpFDSPvuzM0biyXpQfJttCVuL/fW6PvmOsp7gAebAlpoQNl
 pF9CpiDzjOKyc4dftTHZef1XPaSEBsIo1NF6JZvU5vcm7tpAL0Ux6LQx7vWMLeKf8jQXvofI
X-Authority-Analysis: v=2.4 cv=RIuzH5i+ c=1 sm=1 tr=0 ts=6830b199 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=BMQiLzMcCAhL0mC9dAoA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: BRnCWA3sSrqecMzp9grTlmrXzbRT2fBG
X-Proofpoint-GUID: BRnCWA3sSrqecMzp9grTlmrXzbRT2fBG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-23_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 mlxlogscore=710 spamscore=0 lowpriorityscore=0 mlxscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505230161

On Fri, May 23, 2025 at 01:18:21AM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> As part of stepping away from crazy hardcoding in the driver, move
> define the slice explicitly and pass it to the IPA node.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

It seems yesterday I was blind...

-- 
With best wishes
Dmitry

