Return-Path: <devicetree+bounces-245037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A885CABA36
	for <lists+devicetree@lfdr.de>; Sun, 07 Dec 2025 22:49:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9363830038EF
	for <lists+devicetree@lfdr.de>; Sun,  7 Dec 2025 21:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D9482D8362;
	Sun,  7 Dec 2025 21:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R7kikaI2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WdiNehUV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C4C72634
	for <devicetree@vger.kernel.org>; Sun,  7 Dec 2025 21:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765144175; cv=none; b=Vj7DTyxu3yqmrlkDYl74y4cPqIxUfflV9S7kyYEwtviceNZrzQErptGuh3CKphGLRnynl0tKwep4T2rxbLOPhKMx3cfKHRxob4BtRxZaKKONpObE/4A6Q2OhjbkEol+zliIX0F82+6hvyOMjiYLCZEefgZPntm4Sfnb2l9ExV7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765144175; c=relaxed/simple;
	bh=ADIUFF3NaF66VjOH+E4MOelUR2rRGzihe4N9ijxdzY4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cRFGrkJtJZll10eiUf0sHVpxyAX/kNHyoWufpyHXCo5XDIOlWDstevJuPsdnbDt55szLuAq44CtZ6uHyChY6QjFvIUqVMyC9+sM0XkcW7AEWlEAoGp8tScdQRMt8ZoOvb+iuSLRtkWQX9EOu141ldZiTeAWjlYghjRpERiQZ0oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R7kikaI2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WdiNehUV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B7KPrc32998741
	for <devicetree@vger.kernel.org>; Sun, 7 Dec 2025 21:49:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=FNixEomyDSFdFEBjauMSbnu+
	A9TeWfJ6DWWKq8tjyZE=; b=R7kikaI2zntv7Yt0DptXvIwTPgEbsEZAR0+6+hCR
	X+AiPaIxZZnDwHJxMz16XF4PX0/n4i9uy1+QMnEasHfovg+nARp4tIo+nYoXXwTn
	4OL0sDo6yQQnVmEG6NzvalZ3PzrEVBIAQuWWsYIXnc26F8Amfo3skdarr9jxplzh
	aieLlypaJV5LGFEHDGcCMuWOIwC8CJLkYpL+Nk2Gd/9Vo4lwLz0DwNSTxKroasKm
	/K0tIeQ8oryUOu5Edxj6D9R00dCYF+S3zMlmbWsWrxf+6zj4ZOue3b4kZdptf7MJ
	9klvW4mT3WjL/eATSBeilD4crd/LKDcrZ8Tp377oBuYj/Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4avcndtyh6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 21:49:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed6855557aso100024611cf.1
        for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 13:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765144170; x=1765748970; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FNixEomyDSFdFEBjauMSbnu+A9TeWfJ6DWWKq8tjyZE=;
        b=WdiNehUVFUq5/eqOv+ZFtlfl27+ViDWssnIz6Lcmrq2D+LD2vjyj55KMbXLbiDnq0x
         vRTPcENXnMoGbECaMGJkK+zlKRvr0Y9vu91mAEe2j/A8q+8UUwxonk/axNgpai9Z7d4w
         lY/bIBEx193thfA/Eaoi/W9up+ji8i7cZf1bWiALIJ4k6zS7P3uUdrAdrE0qD3Z3MML2
         aVMSXAnE/wIQx+jR8slIGfNc4+ZDoEkBhST+7U+sakF7+XVoNm/SYmlJ9apRnJUfrm5h
         QtlSLtzViPgYlI9qR7CJm7bSPfAiDp3nAV+7k737eXeXLi/E3U7crKjNw8yOaI4CJiv0
         FmGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765144170; x=1765748970;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FNixEomyDSFdFEBjauMSbnu+A9TeWfJ6DWWKq8tjyZE=;
        b=D4ADfz91sw4vAxtHQ3HInTcUESqXd34JUEecugODthqN6FQa8uR9J6weh9Lv3Hhrj1
         4PW19zmfMqWdzY3xlJA7TTIQnS9zN2F6FRLOL7bXseniKsmTnuYNeEdIvMkp8kXqYlFn
         WAuJbOcV9hXkUuuM8j4GT3zoNtqSsEtNcuu610ku72U6AGdPejDdxXT6h/BlIPD8mSFn
         /lbIP6sgd1iE6NZk4LbE2ZQKuBS7Egod49vigqTWElN5UH41LDL3Rl7HB0Bak+tHAvhk
         ROuzZWsLFrm5eTBGzQB/ilRZbHPWB2mxpW3lpRTmPzc1QRDmOjuvda6iQZyiL3gCfU1m
         v2GA==
X-Forwarded-Encrypted: i=1; AJvYcCXytVKamxLoh+5oXTsFlyTrmNMRgIbmNxXeBK6iRGVwUk+hWM/BCuajygLakulMUll2cutZtIjP12cW@vger.kernel.org
X-Gm-Message-State: AOJu0YzSoOHGH26hZ83UB/XPiDu8ziGDACespsFvFEhkagsDACrjgMWj
	ou+Dg57F88nwwohJhKy/UemA6Eu8ybEXCUpUx9I6iEsaDWA15AYBoxj5lZGc7rtLPMej1Fd+TGd
	RFPtkjFTxBGlZDrq2rpFTZMy5ZtV9ky2XPaaxxOKLSvwzKSNRHZ/MTGkZCnd+bhLd
X-Gm-Gg: ASbGncu7enOd9su/rYRS5LcL4Yv5PUBKJUSKCqrFKK8w3zRX/uRod0bKSKeRZrT5BnT
	2sG45p95RAHkwOdZhhOJ1Xt2EXTVA46rxFImm2zb6UkfTGkF+VxD7nGSNwD10hfMI5Z9u10KsMp
	j+OeH9OLVVAmvruU0PYfha31YVy+Jr5aZH7VdvaGDfzxLhJ6zAvVNFHmJ6sAiy0XTj8cXDQu5KQ
	klMV1UjG50YSvVytfbg5KrNedFoeYAFTm9lf2zGSidZ54HjSp6uxtzvYgWl0INAfrBloB0SfN/X
	xU0Y/snOm5JMzDqJZD7Avvvhp3Y/aKq85M5Z/z21HSKKMC1S+r14zlC2n/ZsvQuMNLqYhiuJAMT
	FA5KR8MeglKWShV/atdbtWA==
X-Received: by 2002:ac8:7d12:0:b0:4ed:ae94:5f5b with SMTP id d75a77b69052e-4f0230627b0mr216341081cf.8.1765144170423;
        Sun, 07 Dec 2025 13:49:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGuCrwgs4G7PoLCqx7vQwkWcAcli3TelJ0o0m6XK3NwpIKsq9rSS9HSbvJpuZLjZT0AH84kUg==
X-Received: by 2002:ac8:7d12:0:b0:4ed:ae94:5f5b with SMTP id d75a77b69052e-4f0230627b0mr216340781cf.8.1765144169940;
        Sun, 07 Dec 2025 13:49:29 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b2ec2d8csm9597809a12.5.2025.12.07.13.49.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Dec 2025 13:49:27 -0800 (PST)
Date: Sun, 7 Dec 2025 23:49:24 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Jeff Johnson <jeff.johnson@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Luiz Augusto von Dentz <luiz.von.dentz@intel.com>,
        linux-arm-msm@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 00/10] Fix up WCN6855 RFA power supply name
Message-ID: <xykyhprdmcotntx6kaqhobupysvyhedfktningltk6knl7owtu@rlszij24zirg>
References: <20251205-topic-wcn6855_pmu_dtbdings-v1-0-165611f687c8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251205-topic-wcn6855_pmu_dtbdings-v1-0-165611f687c8@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: dilyGIj6XwDHyyd8U1sOqhORWdmF_5Fv
X-Authority-Analysis: v=2.4 cv=baJmkePB c=1 sm=1 tr=0 ts=6935f66b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=M7h3R06PahCMBt7vG34A:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: dilyGIj6XwDHyyd8U1sOqhORWdmF_5Fv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA3MDE5MiBTYWx0ZWRfX0CEggkaOnmYh
 ADLmBCGg4dwDqU7pGZ2FxTuWGcGWx4GqlDjwDfMKVAHWHFKeBqKPqdcFBXgYZVDIwFxCcrc3Zz0
 OzuhDfvdPenoubWBlbFpARxIra//YO75FOVmg9ljvdjMtZB7inJED1+hCvbz3tiNWDKSqwoqP0M
 O4s5lrA3iPn59dUNtAFjlBYp5oWbr4I/aSjY4izVfq+tzh33UbPinpUvV1VylGWk158rFc60Np7
 rsQp9Mun5KwPOAmurMM33P2H+QuPxG6GOHAbgt+LgompDyd7EHln1rH7HkLjEHlsqdY7ice4dsc
 NaMRNXtzosTpFNdiB3ZInCToEWlFAqeEp8khKdH2uDQDddZENY68Psu2yzGNJ6COh7wxIbLSpsQ
 PqpJM7kPrKy3yAo+E4XKgK7+AzZ+uw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 impostorscore=0 spamscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512070192

On 25-12-05 13:47:19, Konrad Dybcio wrote:
> Commit 5f4f954bba12 ("dt-bindings: bluetooth: bring the HW description
> closer to reality for wcn6855") renamed the supply representing the
> VDD17_PMU_RFA leg to mention "1p8" instead.
> 
> While the supply's voltage is normally 1.8 V, the bindings should
> reflect the actual naming of the pin. Moreover, almost all DTs define
> the output as 1p7, so that ends up looking a little odd..
> 
> Ultimately, this is a "fake" regulator that is consumed for the sake
> of DT sanity and this series is meant to bring uniformity and squash
> checker errors.
> 
> The last patch fixes up a less-trivial warning.
> sc8280xp-microsoft-arcata is left out because I don't know whether the
> mounting of the chip is on-board or as an M.2-y card (although I would
> guesstimate the prior).
> 
> Depends on the long-ready-for-the-merge series by Krzysztof (per-chip
> bindings split of qualcomm-bluetooth.yaml), mentioned below
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

