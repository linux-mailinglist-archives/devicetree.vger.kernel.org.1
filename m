Return-Path: <devicetree+bounces-227335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF1CBE096A
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 22:11:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A049189FE26
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 20:11:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E557730C602;
	Wed, 15 Oct 2025 20:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h5EfwfB1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684F130BF52
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 20:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760559088; cv=none; b=VCBqBqOt9kjNyTJ91H6L1M+353iiLuVTlflUK/iFhd77wKK9b2YGV9capbdRQnTv/twbhKTRzMEr0f4Ecl17C3R7WJyogedT4LZL8y5ysvok4PE6DtToBGxGZu5JjbpspjQbiWbxbQQH43OHy8MoxJ3QYQpfT4wjTdE726a/19Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760559088; c=relaxed/simple;
	bh=tlQYqfr+lRcDlNEbr07FlHSH5FhhsNlr3tj/6Ax+bv8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LqRDKOY7yXDLjg+FQ+hV1BK5qsPQN8Ge+ufiIBAt7IoOvil6epF7LDfreFePfVH9yJRdgzuTqVhfsgw8w5c/BR62Nu2U4eY9vwks17moZ/fSkwlbyFoNfqmNH5TB4eyfDvg7B5vc0WE37c6jljCjEraJ0S39msEkvKQdPEfXx2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h5EfwfB1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FK70Ug005266
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 20:11:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LVldk4RaYwVtWNntXmtqcnQ4
	tRICAXA4ItTRgBL4U/k=; b=h5EfwfB16OChAMhW0bSF4lcrtvuj74YxIA2+zh9I
	Um1+XfQuBgID6kcKU/RXriVZRNJC/EOJPCF/WPGlBGjus3UPXnE+uHIxlCll9Rfk
	x4MUwoXHW1gkZxWGGbl3EIX4othAMFy74lw3rndNSLe+NTAbYf2iBgyKqno7VlKr
	rBvw/rzHNrUM/ruU1LIT1lOASrj8/aDs1z84zCIfX45uxu/3nBllYIaTQJ4kFlqA
	If9XNSQZDEdgv2WtXSbJsj5UY7GuLYXTPHCYO3Yfx88Z0UImW7L0ZtKaub+c6Uk4
	MipaVg0Xb8rjaUgjKhyETf5eBl1SgBhktN1g0pr14TzFRA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rw1aj2x1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 20:11:26 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8574e8993cbso1437310085a.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 13:11:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760559085; x=1761163885;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LVldk4RaYwVtWNntXmtqcnQ4tRICAXA4ItTRgBL4U/k=;
        b=SXdRQKGGkwLfyfVhMD/D8yZe6P/+n7N37GS5PuYWuDe8zNkGck+oPQzTCKDsaJApCS
         1N32m22JNaFwcguhgoKsrZYdGX82AHdtBylNYdoXzjEhVfY6HEUAgW/1lZ56etUzi+3p
         YDHdoUJfdRs+S0le64oolKEB2haUKVpdo32xEm8vCYVmZ/zenJ59tv8xzI+75JDofqD7
         IDtQGy3iUz9neQGEzGeMgFd8rOfSR/f7wNtism92zC1Y+yU41/+mInDBrkpG7oVaKJxE
         EOk6WJ/yDcZ5ol37yAsDflooEwLou01kzgIk5LSauUzihCj8vuaFtPEHwr9P9kVAx2+a
         cf/w==
X-Forwarded-Encrypted: i=1; AJvYcCX7myKsYzs3w+qNh64WOU0w6o4vzRc0tF63ga3+ZXpdJsqX1PbCXtC6V1Ajzf3f+K7beeSZH52nNb3R@vger.kernel.org
X-Gm-Message-State: AOJu0Yxy3p6bzaNd9aP0BOGxjrGZTo8ytlProowGBlrco3BBaJFH3PSe
	U4J6LxylhiY73BY/8anc3dxV2jmDCbJ1LVCby6FgySwdEhBDZrmzVI/xKnjMisS4kfi1fJHNn1u
	imhuwDheOJmaRGfMLuVv2cjUbE85csu5D9IboqDvv7SqnAzCsoM5n4AULoJmotEZH
X-Gm-Gg: ASbGnctwhWWGAdH3m7WpU0X/qEWljVZHUfOnc1l58uN6nrHfB1bBPT2qAO4rdAmZ2io
	YCWdZ1wsuLyPzTwM4X6rsQqiLA+/m/+DdRF0wMC0aS5IXCtpyyhgYft9yh/UTUbTIe4WncgAAR8
	76klQaeV4sv9uDrnPu1h/KAb8vZl7cE9c8qKlMNNTx1H00wIKSw4i9lsViOJ4ZAcc4lz4twMpzp
	FZ8y+gvzQOL4qURnl2vWUYLb88avdNbau8NumaOcJAXxTCratgIeFyV03WFFiIzQutpjfny/0JX
	eRYMUdGs4FpmEBCvA7VjTeE6zhFvIqQl6LSTbUkTPmskPXOfSeYkBO2tG/UGloL7/Y5IUipfVCd
	66OuQ3IpKZgClZKYyFHCkwMl4S/BaDY4Dr2OBCKr7jEa89t9l8CV3ItMRYtlg/W9WA/VVskIGKP
	muM53yXJClg8Q=
X-Received: by 2002:a05:622a:30a:b0:4cd:601e:9d29 with SMTP id d75a77b69052e-4e6eaccc282mr395056611cf.11.1760559084794;
        Wed, 15 Oct 2025 13:11:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFs/8x4/fTZv//0wDdUVKmlKtMYrWW/DNTSd9Z59w5HhH6mfvuS0MkwZLiRmy45Bts6zp0Mvw==
X-Received: by 2002:a05:622a:30a:b0:4cd:601e:9d29 with SMTP id d75a77b69052e-4e6eaccc282mr395056121cf.11.1760559084146;
        Wed, 15 Oct 2025 13:11:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088579de8sm6500434e87.115.2025.10.15.13.11.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 13:11:23 -0700 (PDT)
Date: Wed, 15 Oct 2025 23:11:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dzmitry Sankouski <dsankouski@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm845-starqltechn: Remove stray
 #address/size-cells
Message-ID: <37x5l2wmtzcvhz7ui3plpke5irnj4lpf3fpsi6kmuv4d5tiis2@cdxx5nserdnd>
References: <20251015-topic-starltechn_i2c_gpio-v1-0-6d303184ee87@oss.qualcomm.com>
 <20251015-topic-starltechn_i2c_gpio-v1-2-6d303184ee87@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251015-topic-starltechn_i2c_gpio-v1-2-6d303184ee87@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=K88v3iWI c=1 sm=1 tr=0 ts=68efffee cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=uQEY_WcXetCi4OVW4CEA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: IMlkQF2_K_AC35B4hGE1iTlH1aNQAyp_
X-Proofpoint-ORIG-GUID: IMlkQF2_K_AC35B4hGE1iTlH1aNQAyp_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAzNSBTYWx0ZWRfX31jb4CCgA7cV
 /iK+bNLWQCUNQOPipmIqGJ60tUFtnm7EsXroTK6MmOJZ2GXyO8zdzhxg4sVyMy6BKpjmgCJkEPn
 tb54vRlJGdZA2z5Vb/5cA9XAnDTUk3+hsPr11HVFttDdZ8RFSJfm5YF5gYMOblE01QRs84qBsOx
 72CO+bJSX8tfHlR4S9hnqDiYkT0yoPQdVTUUsgb/w9TE0m8nzSvYVzWyoEiaa6Lqw0BXj81OGLO
 0M807q2T8/LINkqiRFSupCEzQ6jC/xk/JrR26O6BMAj3nX8F7NBw727hF1kb3NTaFEMujUNUKCS
 E3HcegL/9aoyOO/KVnV7Sk4Gfd25izhfg9FcsMrFlKT/O7aPL7scnwefykTO78mfKfLhmvmuzUJ
 Z8rN3S8VoQj9MUbG1Lf77/srOdDtrw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130035

On Wed, Oct 15, 2025 at 06:32:17PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> maxim,max77705 does not have any children with a 'reg' property, hence
> solve the following warning:
> 
> '#address-cells', '#size-cells' do not match any of the regexes:
> '^pinctrl-[0-9]+$'
> 
> by simply removing the disallowed properties.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 2 --
>  1 file changed, 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

> 

-- 
With best wishes
Dmitry

