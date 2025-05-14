Return-Path: <devicetree+bounces-177375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AF754AB74D0
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 20:54:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 441F91894A0A
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 18:54:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 909FE289E2B;
	Wed, 14 May 2025 18:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k4leXMfm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48186289828
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 18:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747248840; cv=none; b=Y1+ljxhX1QNZhVsMtM6Td8BAirKNcwa/Npx88EBts6hS5B6amzNLYqbf0Pv2v7PGRhGdTurupvlrqTMaaoTWTsSlDLgt/kzSBi7ReiWs4Z8CUgrMGHUL+5OzWDquHlSQRygIV3/mTfnYhKWOAxGnSLHBFqp+5Ew86J1et2qFekk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747248840; c=relaxed/simple;
	bh=pd5HZoQHlfDB83SHAm/UE0bw/g9vPOihPEKI0JSdAGY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xl5Q9E6DaKPiv7h1VOOl96BOGzC8C7J0PL/bDsuSxkk0mQ/Xvea51xYH+dAqzkic2xZJFqA9+gvYRvwk9m8aQLoKmOTOSxx68vEwpe/1822yBaLYhLQh+py03wQondBvieKYZPUQq0BabX51ui08ePMF1ggJAcNpiUTGtr/nKUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k4leXMfm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54EAuwnA003093
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 18:53:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ukxaKAPGH9v83qxSoj+fTaY4
	WP0wtg7rtq1LrdGLlCI=; b=k4leXMfmKShYvUlRWlIAcHT6vvYmO+3MgDw9kMV3
	c0ujduf2W8AonT6GcQq7WIahWFnYu3nuKqkGxuHSlX21zFzQghNI67UgGkte0Izb
	2uIhnBFDYb9Txqk/i5DA8ZDYeH5I9aooNAR7xdkiU8kfl6gconGyijzHzB0fgle7
	Bs/NJKQsaSt2Y72SH0AbJB45F0hAoY2YO0wy4fTYuvZ7fmbnzNbaC56Cpp9j5sBA
	v5JiJS5mFo6B/nm8WKbhy94CdE6ZFle3D9blunpkPqP7kYlsIuNF2JnL55+b/Lgt
	RUZQzZKjbCbhiguBsVPI+XL+oBam7TlSijMpN6qmzL4vGw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcrbqcq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 18:53:57 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c955be751aso15206785a.2
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 11:53:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747248836; x=1747853636;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ukxaKAPGH9v83qxSoj+fTaY4WP0wtg7rtq1LrdGLlCI=;
        b=vvYiRl3k77Azrm83nqsEEs1gvOU/ZDQz6B6pXDArXFMWz19I1+XQDA0/HjuTY4jext
         Srl4xW10IMQ+QfPtinDyqEHsym8P6qBuBQeBTaLXg6RyN8be9G1qy+BbTfR9MT+zkPF4
         UxliuaMbtq3jp9XXhv8JiP6+WD2yQJHKH42P6YyC+OH4OY7geCnfF4EuJgpgdcc3Nd7e
         6ci4+DZSC1eQLz6+WyYedApYKcG4kzDXWRpfBIm6dj44c26ncsmKgx+TFEC8KcellgP3
         fGSHUJwxeVVH+G7xXC+eGql6+MXISx6tusn8HAQMVIk4QCJruybmPxSnRveZBHQUR1gr
         Z5RA==
X-Forwarded-Encrypted: i=1; AJvYcCVGQj7xGhd8qwLFZTrJIUqVjZg2NJU8JvWjEHgN4H+fbUbctmm3VL7XkIsb57bG4F306AvwRWT18jBb@vger.kernel.org
X-Gm-Message-State: AOJu0YzP7hTRZP7RtijckyoPfXzZL6xi5XfGik35v6aVJTVQZyEbkfMl
	hip1TO1HrROdR4ZtOfdNsQ0x797GX9Cao0+kpnmN3KdMuwPhEY5ntE1jehTJcQTl3cs2CaKu0Xc
	xNYOzWbd5ZgOyU1sjYM2k53uG9qehv40ugjuVlCCIHKybwbWhMzI40RZfYtgH
X-Gm-Gg: ASbGncvnBagrsdOofvFYSKiEvgOGrCL3kQxjF9/B4SSla8F8p9u5aN4XX5LjQR6p/rV
	QM1BMIzoiUvMuxfHXaVZE/sG8dyscY6SOUPYl+wM4CLDUOMFKet8WkJMBMxUCNLknwRog9duW5y
	Iffr49s44WCaDPdLezeE1ze8UbweTauoJiIRhQd5y9Tb33TlDoz8TS7klqeVxkZZyW7tWbOFkjQ
	/KK9/AM9QTFxvJhPGU8q1zki04EFjKM3MsnZb7WKM4zE1N+VBiVmPRd/sUxrB8YwdwikxDB3o7y
	IuhaX8XALxqcCzyIFH3cgDscHbLmY4znSHaJiAnOhC6HtuxGEb0UOzVj0hHMGyI9u3UbQyHIH50
	=
X-Received: by 2002:a05:620a:24d1:b0:7c5:a41a:b1a with SMTP id af79cd13be357-7cd287c02a2mr548795285a.10.1747248836210;
        Wed, 14 May 2025 11:53:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZUyH+Bec3Hx68QTyC0qyBJH9+IhT18JrntqcosT2qsSgZ65jrQYaHYNIwh0rsFUc/zM9n1w==
X-Received: by 2002:a05:620a:24d1:b0:7c5:a41a:b1a with SMTP id af79cd13be357-7cd287c02a2mr548793185a.10.1747248835857;
        Wed, 14 May 2025 11:53:55 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64cd23fsm2351009e87.249.2025.05.14.11.53.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 11:53:55 -0700 (PDT)
Date: Wed, 14 May 2025 21:53:53 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100-romulus: Enable DP over Type-C
Message-ID: <ibnu4uouts4zbo37tsf5k75we2jovszi4gpsy5t7bezpmfdcel@cktq5hcgdhfw>
References: <20250514-topic-romu_dp-v1-1-6242d6acb5e5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250514-topic-romu_dp-v1-1-6242d6acb5e5@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: nB5oYS-LTieU814YqWg7am2c8fZzlNDF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE0MDE3MiBTYWx0ZWRfX+VfswCqnIaEf
 SjwnyNk0gmnbXXksOeVN15bEi+62747JUTfQIBQOXTRW9gFa4KapLRo8QFWyM/qcU9NCzDobomA
 PUmFLdEFMvK6/8G75SD8UWa+O2XtLZIp7Vspa9cSsO+CYg9v8ikhJyq7F0i8Bc7gYaotM2Mj047
 exZbI/GMB3LEfyeqg6iK9Ay69y/orQ6OTOihGcbebaqcYkn2+iL74ajjM0H8Cdk0qgwA2mV7D+j
 TFMN/ZqDUVyd9gA7eVllmVlv9ko1VnWhBzyKaOMXbzTjb9Pbf3/U8PcX/35OYjIjL+1R9x0O/ln
 llBQaF/OPviBFfgV1aC67AnErdNdqcCdyhInLUjKDsNh5xThspJlRQrsLrsb9DBzpnun4g/sSoY
 E2MKO+f6NOoSSOpL7dsjzmCciiLJ4a+epHikvhg621B2e/ylWGZMxLYKx/avsyrQAxg/IISB
X-Authority-Analysis: v=2.4 cv=K7UiHzWI c=1 sm=1 tr=0 ts=6824e6c5 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=9E7FZHApTnMTk-4ZJboA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: nB5oYS-LTieU814YqWg7am2c8fZzlNDF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-14_04,2025-05-14_03,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 malwarescore=0
 phishscore=0 mlxlogscore=748 clxscore=1015 bulkscore=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505140172

On Wed, May 14, 2025 at 07:47:16PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Both ports seem to work, just like on other X1E laptops.
> 
> Tested with a Type-C-to-HDMI2.0 dock (translating into up to 2 DP lanes
> worth of bandwidth).
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  .../boot/dts/qcom/x1e80100-microsoft-romulus.dtsi      | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

