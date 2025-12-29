Return-Path: <devicetree+bounces-250201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D17ECE6C59
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:55:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E8FE3008187
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E30303126A2;
	Mon, 29 Dec 2025 12:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GhgHL1x1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Tv8TOVsJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E47FAD5A
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767012900; cv=none; b=M37NsX6gRq4k06jcscg8RYagrTEhVfh+vNybqKnnaxWtBXJRaGbPrcnbuOn5MOIVZLEKMhaDuUoyBTPJcSrwujYaG1FZlSYT9TEsjTjS6Q+XXQfjpSyBxjE8bXwFB/4U+R+zta1YGPlpnHPt1XIO2aQGBwNvIHgOxOcyhUBCEz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767012900; c=relaxed/simple;
	bh=rN8REc4oSXbULa6ZoaAoJNGCRw5BcaG+TBTh5OINegQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZzY9TPVWe80eEJJWqeHAtkeBqGJykxw9DuGjbFOz341dXbuTOkZfF6o59cbvcWovliZdjVDg5Ok8ihBcVf022eJCrl2XUu9T/4XwiQeOKMQd/9HjzURPCd3IyqZz+tPyGm6+x2ixnSEwY5hY5fk8mmxQJo7M2ybycOXBq53llOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GhgHL1x1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Tv8TOVsJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTB0wNR3990177
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:54:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jA8QcHtW7HHVoU0EfRb7gxplI6JDHnTKD0S4pa+WkEI=; b=GhgHL1x12JPvZ6k8
	8ZY89rYiOsJ57+tzFHtWgXHKmaSF7lPlZ5cxK84ilTZJcFjgGeMwKEUnuA1dz4aT
	e3j79k8J7XXJo4CtjOWaozGE7ZSA4+vqzJR1dNIBkiyo8UJiTBVHlynKd30dGePe
	hf6dpZKm0xAoJ54RHI86Gv5k+zZtAeNDSXvG7JBXrI6BIn1UFVHV8XyvE7ommokA
	KG4zCtzAKs6uJRDVpXj/Q+niMyO17UyKD0NYwaqtUpXVhUIhx3E2VnTUCI8FEcQL
	vRCYYVNoJv/AJX64/FHYaFhpiSVAlJL8ETJ5JjooUmKY+Av4THPsexQmQ8NXG60m
	d7O1NQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba6dr4faq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:54:58 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1aba09639so27102551cf.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:54:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767012898; x=1767617698; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jA8QcHtW7HHVoU0EfRb7gxplI6JDHnTKD0S4pa+WkEI=;
        b=Tv8TOVsJgyhsKaYwCl4lEV8fS8RTYFF8bfGz5gOo0eEH/hgjTyk28Oib7OygypcC64
         p/tymjWSgz+u5WcJj8DDXTwgZGVgAGt0szBEyiULgK0DBZwCYf7a5rCEmPOdSF0FWI8/
         g5etGUMZShw+7pT1NM6CU9raitTEsLugjcJeKceF19FTL7sFUgttvue8FeUwGDWuIIBG
         4W/qvn3GGRK4IBl3pDgoKUe5ykbPHD6XnJ2BXYXzaKLJhqb6eMVuxC9Hj70xDIU/lNUt
         Q0h1wQXLIU9va5rUi02ndIsn0KUyCCD5QfgYhfZgp7dF6VS0NIfHQQyQjAYFwvRPxjlg
         9hEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767012898; x=1767617698;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jA8QcHtW7HHVoU0EfRb7gxplI6JDHnTKD0S4pa+WkEI=;
        b=PiY9g8WzobamCXHLaOrChWoFqv3MIojDYHHiLTQ1pBQayanpJY8NPYmVe+2cshTLZD
         SvSEbvTYEyuoE9omur44ZBQ+NGgfO6KG/SBSVMxFAW+/qWd09m9wMLLeKwkoxZzWddZt
         9TZvjpxujaaj3whfLdSzphjSIjfPpzlQzDaKH4buPftcv2HozDt4iVqKOIzRdgiXLXpv
         k3yEL9MVfw6+Gz/hhLmpSNZxduStewxFkOfGrLs9lom9tCNSUpcp+6zs3YolYrn6StZH
         FMoGxTfsZofSCl9TcJ5MaEMJnRMKjeAKs4iUSI09abG3NRYmAaUtb1hcA97tL8rKHdIJ
         nWfw==
X-Forwarded-Encrypted: i=1; AJvYcCXcYLd59DIL1FlftYcqOasdEGXomcAO/QnkT1UgPJv2wLSebrnylxbmskJxMGOYsbw1E2gtgpnudAra@vger.kernel.org
X-Gm-Message-State: AOJu0YwcPQX9VvWbcZXCqxMZ1oGUB0rAv/EH1qTrpHcoR0z2Qlfn0Fb6
	zsd12hwjxGXB2Dm7LHHlYRw6ChygkHmjffdduG7Jaci7b7roZpXtD8jVxgfMbJvKXUeizqTJgTO
	KLzaox1v2Gdc7m5DifX2D9TzQ7bo3dXKjCkyD1O4WO60xMX5mjok07EyFEVt3MWCh
X-Gm-Gg: AY/fxX5kf+R2/PJ5qCV8Y8PzbeFr39RkM+lqcCpOXb6/TVcJta++A90WbuqCKaZRxbY
	cnzA/8jTJ6xaYOyB5T1u0q/BYncCrdn92rr3f49EooTLOi/UU909f7aiBHm+vqrlzdQQw8/45tn
	9PWCiSKdCRYZvzwTE9XkJmjKGEyFV4ViOr139VOymTHKYXnQO+98Jk6/K8mzJ/ofrGXAC3zuYJh
	Hxcu1ETbtSrlbqdXh/AqXDnrWR6gRFoAPdhyBIOulE44f/XgYMYdGVlK+TIdnYLSvOwwM0apreR
	2DI9/YtKJllrqzqMWNg9ZG4SqY1ykB9ZjqqyNUPQnzfk5bP21IkqpbU8UvzCIQDAG/tN8wPo0EF
	cMa/mhUEpdHhlMY7cU0eTuL2ap9vdqYQrZJERJ2QCB69GCWAciR8PfN7wmsiOwJQQmw==
X-Received: by 2002:ac8:7c52:0:b0:4f3:616f:150 with SMTP id d75a77b69052e-4f4abbdff03mr339487491cf.0.1767012897845;
        Mon, 29 Dec 2025 04:54:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEgwl7DckFtnCRCijgPOaaCcklAZK7Ymv4sZDQwpTGIlBx+INb/9SMIIJVkUk3iIhDqmoyrIw==
X-Received: by 2002:ac8:7c52:0:b0:4f3:616f:150 with SMTP id d75a77b69052e-4f4abbdff03mr339487211cf.0.1767012897392;
        Mon, 29 Dec 2025 04:54:57 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b9159ac90sm31735914a12.29.2025.12.29.04.54.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 04:54:56 -0800 (PST)
Message-ID: <05229512-f138-4d97-9f90-d83ecd47dd3c@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 13:54:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100-medion-sprchrgd-14-s1: correct
 firmware paths
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Ettore Chimenti <ettore.chimenti@linaro.org>,
        Georg Gottleuber <ggo@tuxedocomputers.com>,
        Srinivas Kandagatla <srini@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251224-fix-medion-v1-1-305747dff79a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251224-fix-medion-v1-1-305747dff79a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDExOSBTYWx0ZWRfX6UmT6oGabrLC
 KMIVA2+8sfdB8ggZ7/KwHHQm46/sUP5OGV11WMSY7yvxD66cDHsSzClmUtb5bnOz9Dgf1n74d3L
 EZ4RfDloPaKhAWBrYRKCG2vk83ChyUsnK1jFpjj7Ai+mEqfxfc73eOXDG55oSo5iVtRmdtcGfsT
 EL2ORG2yCdbZ8wkPj2I/aTK4QPe+3RDflv9opdiGDYPcK/a7CKU+kYPfldHLFN7sGl9yEM0im5e
 dHAt2aN3Gcm55qv4BJeV4ckIlKqslRZJfkwCt1ylkthgjs17rDIgJWR5nhAKC5RQtEPmGEw43Jf
 wWRMq8W/EGmyx+676H5knJeaY8qCShBe0CLbe273Bw7CO8hStsrrCPW7ppJsggHCEvYh0XKOHC1
 Df4TD5gB2tLLkyTYL7y550qV/xua78wLxnPg8fmnKNGSwgg/x8EysmQ3LP9b0Ge3ZpR4fl+UEGQ
 EDf1TmA4U83lkb5he7Q==
X-Authority-Analysis: v=2.4 cv=VdP6/Vp9 c=1 sm=1 tr=0 ts=69527a22 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=yDUiu3_GAAAA:8 a=EUspDBNiAAAA:8
 a=swqk7-3mBDCmWSZuQGEA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=gafEeHOdjwYkg5oUpzAY:22
X-Proofpoint-GUID: LWYJcbDKn_2EkBpTmX8-Zz3KIfAp0v58
X-Proofpoint-ORIG-GUID: LWYJcbDKn_2EkBpTmX8-Zz3KIfAp0v58
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290119

On 12/24/25 2:09 AM, Dmitry Baryshkov wrote:
> Per the agreement, the firmware paths (even for devices not supported in
> linux-firmware) should follow the SoC/Vendor/device pattern. Update
> firmware names for Medion SPRCHRGD 14 S1 to follow that pattern.
> 
> Fixes: 8cf65490cdb0 ("arm64: dts: qcom: Add dts for Medion SPRCHRGD 14 S1")
> Cc: Georg Gottleuber <ggo@tuxedocomputers.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

