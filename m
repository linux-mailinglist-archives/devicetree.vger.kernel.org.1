Return-Path: <devicetree+bounces-225017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 03311BC9923
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 16:41:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EAACD1A609D9
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 14:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D6FD2EBB8F;
	Thu,  9 Oct 2025 14:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ExdeOdGT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A86E72EB5C9
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 14:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760020890; cv=none; b=fqfx1e0fYarWOZIUbNfEXutwcPJ0xo1xYqxdID22bk2k2A8bSCLcplgugwUKxaJPXYiWoACtkLIV3SmtxiuCxALjtYJCVsA1RxLBeHi1F1C0NmhdrBI8Y4IRkxj8DpEsmLuCNlUlgn5Xag7amVjlg16x350Te1BG0YiLoP9QoPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760020890; c=relaxed/simple;
	bh=hMAlIl8gIK8LztwW9HVQfeQYtg5hZj6rasv0Brdvkx4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sXbIYm/7K7AplpkCkYvttWxLtSwXRszupN26UTGJjYWihpHVPmoVD03qMU2pJsTNWDGvSYPx5vVBmRQ4rRlp/T++YYzkQz6FR9EkgzqibHknapOSAEzHw9GpcEvpJ2xfSHbpAWZ7+vAjkaPZbZdvT2q9EWS/8ML8suFia4iKV9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ExdeOdGT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 599EW5W8005048
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 14:41:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FPQiX2366I2f8Av1zpm9cGRd
	bl2lIGNgfsiAginJlD0=; b=ExdeOdGTwivkH3fbQt9LUnWGOabIJ8LV0nM8sVFS
	0U9BNq8O77c6HfHPfyVJCUaciOFWFlvH/JdSAVS2Ch29beH4O/pLHyDk/x9k3wPD
	EcSAZr6EhSX9vTJZ+/zoCa0c4R8d0rnqZkq2XXKYiVKSfSJK8f3WgjgF6cprOQvB
	M+90L3XbLWixakVTrv7KeUvmiHzgNyc2cTLj7HjL0eH2cc5zWLlxvcoDbPE6j2B0
	ivdo3cSFqrZqDMBtsvKWh3TNdbhlYl1DC07e4ajBmrSZTPmWzkkpFmg8VEci6iHm
	SMuBdnzwqZ+wcar/OXiqKjw4MDQ2qI+X1mwTlU2tPO51nQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4u37h8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 14:41:27 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e576157d54so39611641cf.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 07:41:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760020886; x=1760625686;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FPQiX2366I2f8Av1zpm9cGRdbl2lIGNgfsiAginJlD0=;
        b=hC3754jNn2U0Hm1H4OkFmISiHsjeIKNgny57uSpr9Ps9JS7e2L2Hh94r2agesUZT0J
         4aq3+n0CG0y75KEWBPFRCJrP9C6wbMIn6uzM++TZLRtK8YFwNJZZXjASklnQAyEGgusb
         v8FQYVMGBvWt1rvHUHZVd5G/Nji6yEH509shOOjWeOd0ci67hfFRzfj1Vi0xg5QfLSdt
         YtKhaDKsMu6DZzth1Y0cfeBIXr6GUOofvuVvRgw5e+IxK/KKrDzaTS3L8cBpQOK2WoUU
         2virE3ROMIX67IisFg22sNANKDLbdmXj30jWCrvSBLSncstdKeYKB/3S6evjulqCdpCt
         aazA==
X-Forwarded-Encrypted: i=1; AJvYcCUv8+HKAi1dIx9A9CeC1YzZGJ9LJvF9T/YTmilLUAem0SlUMb2Zd1zjmBMEYTg1+QKGgcF5UHBWkVu/@vger.kernel.org
X-Gm-Message-State: AOJu0YyFKiwRWOUS8EMkQqUdaQWPTUimw0Pab5ykvqrCeaTOFLwxJpcz
	F/lVccG4jDZgGCOWa73lM6Yjt/fjpzgLEgJgUaJ8GyWrZr/m7VFFkENAqEVyUifIJMtHQnf3+of
	TrPn1BAiB4+UGdj95GTC7R+CItD2c9wvj4/MjaqeATchuyERNcHSfOZyU1toaStz/BWAtY9wB
X-Gm-Gg: ASbGncuptuGXF2rV4ZQSEf5N/urJN/k1yxzn7hDsrJ4NCZ89SoLyWlmY7NvxX6xab1t
	83BVxxmrRJP7ph6qHO5U1XAtVsn9zVkntZdtBsZ78hV572fDn68fLFoy1vvQ0F6YQxNRz7xyKVr
	v52M4fPyJKvqExAgNy5B2x1X2rVmbsZst5GBObK2cREFi7Sz/OjN5Nf7qeIQgxx6e1omtfsPugE
	bCLqR6b6FeP8FMtov8dQbFEG3Ytwpjw89kASHot6aG/yPa2LayYXlnjENIlgGQAn+Zd7lc0LSyZ
	qrR3Pvm488w6dPY8dBeefolswGtAeoIFI9F4l/KAjWI/vtjUp3TJeSGKTC6PRqNZytPPykYhTj9
	urdk36Q5uB6mNuVGRyi2S3Ansmad8Wct8rbA7XgbopNsq7QryZOwfRVdy7Q==
X-Received: by 2002:a05:622a:2617:b0:4db:5202:d4c with SMTP id d75a77b69052e-4e6eacd239cmr116681481cf.23.1760020886372;
        Thu, 09 Oct 2025 07:41:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQCT9fe6gb0r9Ti2FL4beKrwqnfcI7Jo0U085lbk3COrZ4Vvf6eZvpSGNwWHODrCy2DfPJ6w==
X-Received: by 2002:a05:622a:2617:b0:4db:5202:d4c with SMTP id d75a77b69052e-4e6eacd239cmr116680621cf.23.1760020885608;
        Thu, 09 Oct 2025 07:41:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-375f39fcafbsm29930991fa.26.2025.10.09.07.41.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 07:41:24 -0700 (PDT)
Date: Thu, 9 Oct 2025 17:41:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Alexander Martinz <amartinz@shiftphones.com>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: qcm6490-shift-otter: Add
 missing reserved-memory
Message-ID: <an5bytw5kee2a76ezpmw4w6n2tf2dv4gr7yblfyfluhxwk2jcu@t3dga5hvtoub>
References: <20251009-otter-further-bringup-v2-0-5bb2f4a02cea@fairphone.com>
 <20251009-otter-further-bringup-v2-3-5bb2f4a02cea@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251009-otter-further-bringup-v2-3-5bb2f4a02cea@fairphone.com>
X-Authority-Analysis: v=2.4 cv=Vrcuwu2n c=1 sm=1 tr=0 ts=68e7c997 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=7Ovdx5uLAAAA:8 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8
 a=bVQzUrBaaxfiXJaSTkAA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=TQZWkJv5rNK5-PaLMsrg:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: 1kEEp_5ENPyZqNHU-K4Z_6W3E5T07Y9g
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfXwmTNZ1nLdNLz
 7drsBO9tRZPseSYwfzOxm9zE6KmIxNRRrmgWR5G95PTiEgfFBxd7FOAzuhhQxCVlc9s7PEvObxj
 JOAQlvQgZC3F9aWnKkHXXwgPvwnYJZSVywWOXimyoas2haqafHaVFhi66blpBtGXss999Ne8elP
 V/uyb9xJCp+Q5InLGNo41bij+yGQqhUaM0/1SHSw+5d9zF6sTk+sepBar1NI7NYbi5JCj8giBUw
 kHsMnAjdCidltkm1jZjgn7QDgfSAlMLIDf0q5EVaVFBUPx799ces+WuNX7B3CMeZoSR7Y2ZZnLH
 3mBvkzmsREvdEi70ZPHu85fJK1sl33esx/6VX5hgD+U0Ur6hEnr3pVObwnZypVvad9Vm42DmMYu
 Clwd3LsFRr6Hboca5gw1KcxkpnLVfw==
X-Proofpoint-ORIG-GUID: 1kEEp_5ENPyZqNHU-K4Z_6W3E5T07Y9g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 clxscore=1015 adultscore=0
 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Thu, Oct 09, 2025 at 11:06:33AM +0200, Luca Weiss wrote:
> From: Alexander Martinz <amartinz@shiftphones.com>
> 
> It seems we also need to reserve a region of 81 MiB called "removed_mem"
> otherwise we can easily hit memory errors with higher RAM usage.
> 
> Fixes: 249666e34c24 ("arm64: dts: qcom: add QCM6490 SHIFTphone 8")
> Signed-off-by: Alexander Martinz <amartinz@shiftphones.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

