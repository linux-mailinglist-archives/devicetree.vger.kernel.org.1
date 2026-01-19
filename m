Return-Path: <devicetree+bounces-257011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E1ED7D3B494
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:39:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 01B5E3010558
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 17:12:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 086333191C2;
	Mon, 19 Jan 2026 17:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="glJKjME7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IiDEpcIL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F2A21F1932
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 17:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768842730; cv=none; b=FnfJ8j1GIwC/886e9fzoeCIU9eKctSf571zblGguloWhF3vL0dLhNKY1yebpVlE8sUZYXw6EBVlh5ZM84KgpCy6a4g1/uXo03hcfLIWbmmI8Q0BvTQ+N2RfwAjqO/qn/avpY34342m8FhC3jLc9vc23BBzXVscHNToKZe66jpEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768842730; c=relaxed/simple;
	bh=rcJwkzNdyewx+FVQ3AJEoWO4Micsemcg0w+QV0mV21o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IxIMRH+h/Xtwm73efkeeiNG/efb1+9x7tHQaaGVGS4ZdmIh7V9LMA+qj6xdefZ5nGmFowYKegMqSKdCa9KL4uLqEqbKVM09Hxqc9HJRXLosTm7xbqqLUx/vDCfg2qQfCalXlJhnnECjF0H2858sg2xOVRm+OVD3GJILHIBdFtPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=glJKjME7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IiDEpcIL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JEoZi22305926
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 17:12:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3ZsbBKA+dRZT/p5GDI02yQEo
	kHT1R1bEsa+NmtTW5Is=; b=glJKjME74J5wo7nuj0PiVxZMObcfEtwAjdkIEr0+
	WFQNrVSUCT7pUImG41yyLnsZZUXwZGO43p7EBEUY/WZCIhLB+u6rrncLCN4xjSFg
	H65uBU/E1hA2omNNZX/PPoZdla3Z1f6Y4T+/VfGKCKkSUtB8Obu/dFqCCkyjUto5
	o8orl5mjKiodNQCiL91Ir5TyWxaPcXc5cwO2A24SLkaSzxNdgaRh9z/jWMZ2EAWe
	z9rQO+kvvrjuXvbS8o60T8MDgJEcKL0ps6TYfiqTv+FV7WGJFsLRW3M1KHm3Cal/
	5NZGLbNpohWaBm3j+AVt/QTLo//hK8MxVVNkH4fCnAprTA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bspqv8e9q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 17:12:08 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c2a3a614b5so1094459685a.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 09:12:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768842728; x=1769447528; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3ZsbBKA+dRZT/p5GDI02yQEokHT1R1bEsa+NmtTW5Is=;
        b=IiDEpcIL8xjNopv6TADhm9tVsFcS9WQlH/qcvYEpo4zdBka9nIIHz5l5ArrekuIyrQ
         u0pf+TaN/DUJM4GbDiiKFMIAT+T6JTL1JtaAVx7GmpWI/hKeBN4ownpwiKPXjBx5sHEt
         viKhzxMyFXNCTjaA88OWlUcwvmheJgi1DObTe6hLt/bRDN9m1smrzZ0mblD96X4RV4s2
         pB/mhGtE7YfDD03TTeLr86gbmWMBKz7iYcfZi521gwhfplxnT6zPvpmUceC1jlH0jepw
         CCeCXMmcdf/BbMWuHVvYL6pFpdhGlMVFnU3ap9Eoho/rDPjiW0e/K+l2FlHcF/D48DS+
         +bew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768842728; x=1769447528;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3ZsbBKA+dRZT/p5GDI02yQEokHT1R1bEsa+NmtTW5Is=;
        b=wMkJ/r4xOgVNLS3feR+yjf/6kfjmOFmdp2yIxwbHXBE7D6CmWpPi8GHef9GkT23D0M
         K1U2zorqaC97uLBm9XwxDGtKLuQv8recubLrismersl9FV2+Fqh8TMWIYebjILyZhMuL
         +s0YkMElBu7QieLja2CWi8XHX9BnMowAYwKy1f2pcnIRY1ejTh7qfY/3AlCmu36ocGCO
         Z4sJDgOmx+f+QoCglnpQTJ8ezRgDPvsw3ksoszPruS4kBuj1oX/WmN3MKzygkAh3veqS
         Gl0KctMGPEA+tE8lt1BK9qB8fozy5Oo7IUol18hXznguKwWtK6dzM4K9g6cZ5skla1Er
         EhGA==
X-Forwarded-Encrypted: i=1; AJvYcCVDNVMQ7tpf1SrNLKsL4ErnqXtBYwmSGEWrwOQXz58rV+LrquYG+2/mibgoA+rh15fnAVnc1uv5hrrZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzDqWtk4oGEuJwvrpbvYueOWyxhJRj6ylBcRaGrROfUAR2V+zV2
	eSVQnDxF+1x0JEj95WRwBIR6IJ3fhX9IJLCu8BNwX2a5kctVmB0RG0yMNSE1Q8e/N9Z+n1tABPS
	VmfLdESdG9fAvg65faovdwwcgR9K9dtc/BNw2XW63jWbbOMfsOjwwLDeqymfyrrf5
X-Gm-Gg: AY/fxX5QCje4D4YfdjsyuVEX/7eqko6Y7gHVsNr0zGv8NTr//LrE5dS4wCvRc/dP4+b
	uCKsbl78G8BndHWt7mht6N+vGVN2kYaJ2KabZm3BrsXUlY2FA7eqOj6m8DiG/rgFmxib2jc37Q8
	k65sY9YxsY1K9RPftIRQZiq2A3KX3gyT3vWpL3gC79itW1u20bCOxSqYYrk0HK/b5+p/rfGBMtz
	5nW8QVTJMkmF3D2odemymwqQKs4PAsPMeyE5lQrk/j90xczXY1krnOgw/sPIWyiG7eK+809JLB9
	wXQxD7h8h2Oulz9hS0tZWds1cQlD2d1jPYW5wHHGwlyYcRsU2plgvUYOwWzEyBuk9gvm0Gl1l34
	neQF45/4lMW+k46upId2Q1C0zSaOGxly1JLuVPLS7AerWxWwPsKatZrRj4OspUP4v+xTTzjV8GB
	iUpw4/l+moCRMvNHLkDLB76J4=
X-Received: by 2002:a05:620a:1910:b0:8c6:b16c:a56 with SMTP id af79cd13be357-8c6b16c0a7amr1198516985a.38.1768842728016;
        Mon, 19 Jan 2026 09:12:08 -0800 (PST)
X-Received: by 2002:a05:620a:1910:b0:8c6:b16c:a56 with SMTP id af79cd13be357-8c6b16c0a7amr1198510085a.38.1768842727485;
        Mon, 19 Jan 2026 09:12:07 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38384d8e2a2sm33129311fa.18.2026.01.19.09.12.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 09:12:06 -0800 (PST)
Date: Mon, 19 Jan 2026 19:12:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
        Bartosz Golaszewski <brgl@kernel.org>,
        Luiz Augusto von Dentz <luiz.von.dentz@intel.com>,
        linux-arm-msm@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH v2 02/10] arm64: dts: qcom: qcs615-ride: Fix BT RFA
 supply name
Message-ID: <skqdemh2r3mukcwc77qwlosossgyabsnrst4hyc44hbpqschxo@szt7dcefsyuw>
References: <20260119-topic-wcn6855_pmu_dtbdings-v2-0-6d1c75608bbb@oss.qualcomm.com>
 <20260119-topic-wcn6855_pmu_dtbdings-v2-2-6d1c75608bbb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119-topic-wcn6855_pmu_dtbdings-v2-2-6d1c75608bbb@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Js78bc4C c=1 sm=1 tr=0 ts=696e65e9 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Nyj594bfyUKc3hNJ69IA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: hFjSziN_MeyqKebsIV9aaLxcL70Y1SDJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDE0MyBTYWx0ZWRfXxBhZLm+HQyZ1
 YcCb4M7ATRUmFTSn0fPpBnl168rTPBh4Ju5sl682NLz3JDk+CJv8yB0KUSb5hoIDO3PDykdy6Go
 Z/tY/yHSS5tUNdDTUsT5YeXckn5L4Nx0hHD5CUmriog25JIHTFGoy+L9svPDKZzFHYDqz0/2gzw
 K/xl8Pmv2TRbw1RVGicF1ujhqeORGZ+dylVy0wBOD9hWT79poLJ7ZxYCrpSKZv8BKRmYkyVSqK0
 4swOaXKHyzFJ/cLYX8n+TlIENgJwnzYGQMborBVoIwN7qnNLjryGmh9gGBQx9lWSpjObZ4ZU+qF
 ILkzxB+CnNFKaVuNf5WiB+kTJZcSd28dAGj5kTASumT1eO/3vQW/+i+ymOr6ivJweExsLcosLb/
 slnsOjvHTrlibc5fihmJY8z1KQWhLlJzoh7oXo1ux3+N9nB7i8rtSTZGKX6ZDvRWAAyL96yMRIU
 mehzabBnYPIxsn0sxTQ==
X-Proofpoint-GUID: hFjSziN_MeyqKebsIV9aaLxcL70Y1SDJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_04,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190143

On Mon, Jan 19, 2026 at 12:42:24PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Fix up the supply name to align with bindings.
> 
> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

