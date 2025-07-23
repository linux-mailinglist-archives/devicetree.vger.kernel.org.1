Return-Path: <devicetree+bounces-198959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 59ACCB0EDC0
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 10:55:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3302A188DF97
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 08:55:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAFB6283124;
	Wed, 23 Jul 2025 08:55:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YvWMXOBr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C74F28153D
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 08:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753260930; cv=none; b=QUOI821NndZaa/irF/sVp64xJziUN7twYLvGvbdcuXahGfOWiltUFvHswrxKHYwWjtgLRG0wcOUS49Q5kJ1B0pLzNcmH84X8/atQ2mP2uEBt+LTZylVfRm4TBBqjmded/27AZE85St47n6oZrF7b+eBT1UXM8cCP4BOML2V06pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753260930; c=relaxed/simple;
	bh=J6LLkUZtxkhT0lF2A4tYYQe7AdJvj9M8D+fzDPn2MUY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bqc86hdVi9yIqyjBlaRty8UuC6NK5iqyd2xZNIAxn0UqbnOgOV70wh26QkDJE0QQ8xOWCCCPsqM0QVTP+8OPf0DOB4++sfRp8oWllnzG9XsDwOo4Qo4+SUlgfBQV4hOTVrlm9at8rqUyn4r4UQBCiOuPA0ccFWZjpQSVE9fGYDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YvWMXOBr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56MMPFf2005825
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 08:55:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2/MKy99x4tsVjpzMWhXhf/+0
	XGUClqX2jBqY1KxJfYc=; b=YvWMXOBrULWXQldxeFHZpwXye1T0I51eS9uifweF
	oeyVAzfF9qVXP9zw50I90MEAs+zr3M/tTeRrtNrv8DXa4p2as6O8D4RTGRIlbMRE
	Jwx0GTmn5yNQQFIVMZ9cnly/rrWKRwiKrdtfECTm/wa8qpDNLkkgHod0CukG30Ge
	olCsoxwyJFoKA3Nokt49zilQ/0eWfW/g7D1yHve4fXhi0ThWBViig1HLWyqyM0ZP
	ByPTXAtindCiCtgxGcQ4FIIpei2W5harCuktfPzj1OxBTvT8uEPk/hwPnoMYAJ+u
	1jwY5j0wRBTPq4Av7rQbsAzxZbmusLkZubPC7UijSNpa2A==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481t6w5muw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 08:55:28 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-31cb5cc3edcso5675191a91.0
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 01:55:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753260927; x=1753865727;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2/MKy99x4tsVjpzMWhXhf/+0XGUClqX2jBqY1KxJfYc=;
        b=UQ/DbJBJf/7LF77f8vaWiV83AouUSZ+WxTX+oQEaoYKGKxs8VRUAU+pfpvjPmL0+JE
         9aLgWmRfVDv4MD8ZLkT/NDLhC+8q/nN9wYWKwPhlaQ5ogqLgRAWi+gEk5YLb23Y7Hq10
         l48qiAEBMYCDrkNgDJyHqP+pyR4rd/liFXFuoGYEFR32yvtKqMaIMHoZUgz5C/DKxN2x
         YWSmoRBJn50ng70T+SqRic2udVH2jcAqxKRlU/dEBTNOJz0MbamMdZSlJq/azAnVBZXd
         7VCTyHAWvskYKDtLH31MKai3fsucHPYPw/D9+n899zdY3PqXvbBL4LP+LsryInat+cWT
         7L4w==
X-Forwarded-Encrypted: i=1; AJvYcCVw5Ua0cdf9Cem2RXlP+K4Kz16vbdK4EYTT3etb/x3ekDfHxSxoWrUnNTAwtEs+zvtvVlxT2kVe4GsH@vger.kernel.org
X-Gm-Message-State: AOJu0YxcsJZdZxZV20aHVCa7eehIro9Ax4TQoV4njaZOtUMPwx3fpDYD
	NANE3nb0z2hwMN+1Ijp6a9gGUxqLLRsf3BQFG6eKun/TOrR667se9B/VXENTLFVQvrPfVQqsmvs
	CgguIxb2s5qmk700/2NHx9oMDApLva5ukQ6/+4Bpqx/Uw+MDzDcjfPa6Pe6ENhURnj+slBnqa
X-Gm-Gg: ASbGncs+xCKZBiYLiMaAOSzKMuLbAfHau8+4chsgUwqN1pdZiIaar+1wM64bhd4uSbJ
	aYVnNOo4kjNk+XenYSnEgv2NCbm6biDEhE9yncGa7QjZ1vsNj6qWSj2beIuN7EoCRe4WhjIVll5
	ARFHmhrB9igtdLfyyL/skOi9dICLHtuHXILg6cjcmjWjaJ6NkJ+gGJu4we2llK/5vYvZLRzZ7xK
	z7L7JMBdm/sVAP6PE4iB8mSxhwHOhHOUt1Ll55xBMJhTG/KdWRvWzYBQOnVzt5hVPIXjuilGSh3
	AI7VUOh3edpMp9AEkRc2KAIgtJLHV29kYG90B3CYs2Y0RQ1yVqRiqHIz95i/i/MiwBh+m6ABgxk
	tIi2LUWK9WclIHjG+Pt8=
X-Received: by 2002:a17:90b:1e10:b0:312:da0d:3d85 with SMTP id 98e67ed59e1d1-31e506df8efmr3704015a91.6.1753260927302;
        Wed, 23 Jul 2025 01:55:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7aSTD2BEN2GPGipaFx5snYQw8DKNBiJv81IMCn4FkQGBP3nLk9dZg+gV939ivxjAN8wpgQw==
X-Received: by 2002:a17:90b:1e10:b0:312:da0d:3d85 with SMTP id 98e67ed59e1d1-31e506df8efmr3703988a91.6.1753260926904;
        Wed, 23 Jul 2025 01:55:26 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3f2fe8d550sm8456955a12.24.2025.07.23.01.55.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jul 2025 01:55:26 -0700 (PDT)
Date: Wed, 23 Jul 2025 16:55:20 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_tingweiz@quicinc.com, quic_yuanjiey@quicinc.com,
        kernel@oss.qualcomm.com
Subject: Re: [PATCH] arm64: dts: qcom: qcs615-ride: remove redundant gpio
 header file
Message-ID: <aICjeK+gC1yxPb9I@yuanjiey.ap.qualcomm.com>
References: <20250723084351.4627-1-yuanjie.yang@oss.qualcomm.com>
 <e0c9e620-a331-43c8-9c62-f9769744a484@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e0c9e620-a331-43c8-9c62-f9769744a484@kernel.org>
X-Authority-Analysis: v=2.4 cv=SPpCVPvH c=1 sm=1 tr=0 ts=6880a380 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=kj9zAlcOel0A:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=HDA7t77kZpctsFZEpKoA:9
 a=CjuIK1q_8ugA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDA3NCBTYWx0ZWRfXxLB9y4n1bHcf
 yhaDM/UInXrLG49ExTo84OrVZWhQMkd/njFhFTtb4XUqIBJo7DZMTiQCcXx3LaICIRaBZcwJcZN
 QtWZ1LptWq7rGYy3mQVXLU2pFD7j+AJAg04bsVm863kRrXas5mk5MyiN8cAOzTe/zV92jtviDQZ
 LFbCF2MPcWqcpLv1O2usQm4AKmIXSHt+eyM3yyqShZrLofnxMRg8F7MDvbQ2Tgkbj+wPas7GYwL
 0bf+GCLvR65HA+R/gf4/ZF8wnd5LZlN+XFLPfXfKRFs1YVaQUqOeCdm4hx7fKZCEWNPTXRpLlcx
 UPHppAiQERKJKc+WmyweOB6hyoImRncd9Zw4GvqMhbwrjpBxWtfO4KRLaH/XJyOKiAHlEUDC2C8
 bmLVcdGZo1D29V/gVNATdO4zCpGqtOan3NWBRbF9W79FMgav4bah4mQdoTzfBHwPCypDnvFM
X-Proofpoint-ORIG-GUID: o_f7nE898o3SgAwGXsIxEDztpT-wbv-S
X-Proofpoint-GUID: o_f7nE898o3SgAwGXsIxEDztpT-wbv-S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_01,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 mlxlogscore=959 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507230074

On Wed, Jul 23, 2025 at 10:49:10AM +0200, Krzysztof Kozlowski wrote:
> On 23/07/2025 10:43, yuanjie yang wrote:
> > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > 
> > Remove redundant gpio header file in QCS615 RIDE DTS.
> 
> I do not see it redundant at all. Just look at the file - it is used.
qcs615-ride.dts: file

line:
7:#include <dt-bindings/gpio/gpio.h>
8:#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
9:#include <dt-bindings/gpio/gpio.h>

I see line 7 and line 9 include the same <dt-bindings/gpio/gpio.h>,
I think we can remove one header file. 

> Otherwise provide arguments WHY you claim this is redundant.
> 
> Best regards,
> Krzysztof

Thanks,
Yuanjie



