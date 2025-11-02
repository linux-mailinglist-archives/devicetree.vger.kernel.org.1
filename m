Return-Path: <devicetree+bounces-234170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F628C29641
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 21:25:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EFFC23ADFEE
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 20:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C69B1A256B;
	Sun,  2 Nov 2025 20:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UXik7WxN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="f+3Mihow"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E0434D3A4
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 20:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762115109; cv=none; b=Soq0LcEYAHBSVe8M0D2r//UOkKNJ8iR0yrES52CZBT/sLM6QF+DuYSzxIFtk5QoieQC+LfLzKh1MaFI7EeTueTUVxleV1/sK67HjGDUjvkvhJMlFbvZY58EhZHWmM7hmVBglDJ+oa+c5fU7ACNomC4WICxK5FR4idEFFAUFRpyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762115109; c=relaxed/simple;
	bh=N6H5/yrrglS9GGUXXu0UIjTadrjxIjFbU48PaLb1FkY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qn+oxlAJYLLSGJgv8zlsKONHOn1GISvGgSKn0vl8BKXvX7SYbZmb9gknO74OawajnzF0bZ6M799EPoGZf5x/m4/W8azNXB1gQR+3RCBDn2HGEngJsTG6lF/12NfIEEx7Lk6H2VolF21VZEtEYY/MOLV2LwQQr0zjmFs7rsEGoUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UXik7WxN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=f+3Mihow; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A2KOiuH1054225
	for <devicetree@vger.kernel.org>; Sun, 2 Nov 2025 20:25:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EEG2Iz1LJudMnHX5OCqnescY
	0Xbxi9uQYfIsRBJgGgY=; b=UXik7WxNrfMiGXzZb2sGx3fburzl4nHJ4Es5i1cX
	segTefYjXNeT+NrMbsVgIikACSS/kBnZW+EDi4r7qeBg4cjwmzbbCHgv5nIp/f7S
	ZbADih9mvKIn4IthNIcuF3WvV7Wk69dlLxXX9S0I8PIAXnb7lDVi3IeURdwjmsRv
	64lSZJ8+9avgDXj5IMq0kFemYgeEYZiXZXn6YSODSquMZI1SxjDYodfE1xzvAKG4
	nRTVo5tYWZybkumPV2RBmfhMUhqv++Bk7nLjbI9ygWtBZIejCgCEOjFtZrkuG45Y
	3THcL9E2iWefyC1jpct4IwBVzmLhp5a/jlRHwx2YCMa+Kg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5bg9jh8d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 20:25:07 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4eceefa36d0so109781191cf.1
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 12:25:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762115106; x=1762719906; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EEG2Iz1LJudMnHX5OCqnescY0Xbxi9uQYfIsRBJgGgY=;
        b=f+3MihowWjiKDL2Q+7Zk91B3ocUU51IHW0bOh/DDe1aP4RvF9SSXyMeXQWa8Z/UkHt
         0BhgHKfPxIn1B5kvHR09FKIQVnr2uezUsFyw9mjlu74z/oyMV8OLBvbUVIvinSiIb6PQ
         lcdaNRWRBcOGeY7419p3u+bNQbJmFW1pMOKNjHOVpZlheso+bthbL5nkfVSJWtRNyjT2
         sI8pBgsEjqUkSDnXYC3ha2mApM4qYlEHVX2UXubBGDPU/oVRN9etw4h29VEVWV0BjLJn
         a9gLE0WeLqLBHgHuucPunYZJuyxZdACSZT2295FalmIo73DvJH+6feMeY8qu+VR71SJ0
         QZVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762115106; x=1762719906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EEG2Iz1LJudMnHX5OCqnescY0Xbxi9uQYfIsRBJgGgY=;
        b=nRHKhhGFRd72sU80J6zl/F+QhkKMJvMUAwkMnhktPELgy7CzczAEaL5TRVkV3Trhmi
         8l9qSbJhOZNvSM52ykRwvCFFykJpUha+9uS2sBjcp+eC+/66XOPUFw6GChyyXsJLDLkt
         b5U8PmemDVX60XdW//czdqQoPjUzt4Ruabak3xJscVgmVaHxeZ/u6Sx5PEa5TVijmdVw
         nlVFcysMsRDBks1zaMzzNUTYdGRhkwTfc+t+WsTohVYATdz8pSY5ah+HEeOOvabVcVmQ
         1G83lNhPQWXYsuDmp3sxzaoRGQRcawjhdkkWeo+2taZu2aMDU8+v1fQYm0/SIlcevSQZ
         53Rw==
X-Forwarded-Encrypted: i=1; AJvYcCWsut3I1twmSF21SsQF4UvAebRaNbRK6XfhEe/2wt89JNhc0mib2Rc5w++BFduEMbGbWu2k8Cb0Rp6A@vger.kernel.org
X-Gm-Message-State: AOJu0YzA1O67h8Og0aeNX/vLxbV+B/jDd/mJlz0DBIQG1gqwY8UM+BRl
	qKkdYUPadubxeGjaMdtGYtdTsTt9h6ExQ+gnUfLaURtpgKhZxkeGyVOouUlW6m8kUGiAdLe84KW
	6XzUiUCwxqAg38wAVo7sLXwkhCc7Yo1ungaeVTpWhspONWD9NmhQFcDrcGxHdyToo
X-Gm-Gg: ASbGncuY2o5HF3XwroWhiLGn+AMZNMqdId2m/MtTQKtE2lnp2J1UGC3XbQyCak7Eu2F
	xHkTck18hlnhRFt+TwQ7aL4LSK1VmgOjDH9STlroaGzBDZeXWPkwIWtXwIsFSQv1dMMdjWzz6A4
	doot3pMzB6rPqGGY9Qbp3csyXFFfS/qSZULQJWLMjPeqV8bR1N088SuSzGultpW3nozBmHDl9Qy
	1tmUHFjlETzJ+Nu1ljuuSkSOcYBYWfQGh13gpetCjg7nPgLwT5EzeuZ1ekpXh9ZwrA1hWzGhOMI
	MxeG/EOcfR5aGsAPrDWgeFdLxTJCK4Y0eO41+t1iu4Kh7a7YPwl8SHVUmdSodS3vCkQ2aGE8ySA
	VSEmlEh9ng96E6RbN+V1pBzKTJRIAMEcMSBStTxqdqXffKD+X94fm8aRfvLU7U+d06WinI+nvvZ
	fec9Q29QocVPja
X-Received: by 2002:a05:622a:420b:b0:4eb:a1a1:7c0b with SMTP id d75a77b69052e-4ed310c5d61mr139573181cf.78.1762115106155;
        Sun, 02 Nov 2025 12:25:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFb5BWz3i5Ujnzs2gYdSamh2WbZV7R4N5QhulfUp+qcWnmLJlhrUeDTv8ibu172IgyTkjIZOQ==
X-Received: by 2002:a05:622a:420b:b0:4eb:a1a1:7c0b with SMTP id d75a77b69052e-4ed310c5d61mr139572941cf.78.1762115105713;
        Sun, 02 Nov 2025 12:25:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5941f39c0c3sm2249247e87.42.2025.11.02.12.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 12:25:04 -0800 (PST)
Date: Sun, 2 Nov 2025 22:25:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Rename vph-pwr
 regulator node
Message-ID: <nlqtcvxwszbi2bwpu23peualujip4d3bv2pehep7kwegf76lad@pxmiji36mw6d>
References: <20251102-rb3gen2-regulator-sort-v1-1-908879d240be@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251102-rb3gen2-regulator-sort-v1-1-908879d240be@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: q7gf0SR9uABWYfbqHL8-3za4JM42FpZ3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAyMDE4OCBTYWx0ZWRfX+ecUVafkll78
 iYhhtTWf5e6ImpR2YAGnK0YKbKPv2CL7txrmfek792iODFMzjj1/dCFEBmyt8WIXZRDuuT8FxpG
 0BUbQM2BPd/EEzlUqfgw/SyXAoIRrCB+RaehQvmFxhUmk103EZtliW7Qo6XzJhENL1Wn5yoSbnj
 oOv5/wC1LjZqwrtgJcaokFXJmWgKGm2IUlb86R1CH9IbcoLr19XHsrTN2E3HGpcWmi5VqnhduZs
 mkHfFvFDSNinO5FWQKm2hFgUH9ndES4+qxlPBPf+MoJn3nSG62EIluXFWPBaibOxv0k6Wqtb2N7
 LZGB4LpwFESa/m/cM2Jfb4xnz0jqZo34uPoSZIPh8faAr2PspX1Xt7P953yoKzRpTL7EPsfxHbE
 yOOgkKr+xrxO4XI31lAoLZ04tSAEQQ==
X-Proofpoint-GUID: q7gf0SR9uABWYfbqHL8-3za4JM42FpZ3
X-Authority-Analysis: v=2.4 cv=TaKbdBQh c=1 sm=1 tr=0 ts=6907be23 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=1lonT_InBH0CplU8HdIA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511020188

On Sun, Nov 02, 2025 at 11:22:20AM -0600, Bjorn Andersson wrote:
> When fixed regulators are not named with "regulator-" prefix, they can
> not be neatly grouped and sorted together.
> 
> Rename the vph-pwr-regulator, to facilitate the incoming addition of
> additional fixed regulators.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

