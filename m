Return-Path: <devicetree+bounces-223592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1C4BB83C8
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 23:49:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4CCED4E04BB
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 21:49:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF90D26F46C;
	Fri,  3 Oct 2025 21:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b69CqWUC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56ACF269AFB
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 21:49:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759528189; cv=none; b=Zyg717Z57JxipjrW1BBfcWbkR7ks4b19zf3n260+oWxXjRr/vGR1tky6d9kASXlKLe/qUsbxMmkQn7mtZGYDhfg2L/cowmmfz1sbrLfuoYWxrDQpnTKYAbW+bPPI1AwwNn3PKnxJkcqJLs6giHs6sFzbBH9xx8K4B5lxT7BX4ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759528189; c=relaxed/simple;
	bh=V2Wkyjp61eE2yNsrEBIrnO48rBvAdczr/Veo5IHkEoY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YwoxVrP0UBVbinOiDrgFAfPKFAABhAB1uK+dWQkdrIYSoF2Ndt4BX0Or6JOSkdSt3puKcD8kArJkDu7KjC45hXnVr75iMaBuL7WTDt4ifY9SbfOWGPwXPeF8kJ4ve/xmwe51Atb+tjPmQtjOOGmVGaXIHS0vecXNAkR89lBDH7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b69CqWUC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 593A041S000841
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 21:49:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CXTO/NJSy1u0WPzx3mtYRDh4
	ZwyImi0h9HK1EEN2E90=; b=b69CqWUCPXNQx+XR9KGvjrsELBSn1i0u8Y/CZX3g
	Ub4gODHQGEfvPZ81Kd1tem2N4sxj+E/KQbDSL4XOPc54KECL7eM+g4jvn259jwSB
	1bEcEYAQRnvnYAdLYupuU4n5gwymNGc0lHuu1npmw6qgYyMfaIdYknzr2p/zZUXf
	46bA5giMFN+BdF59vk51EXdJcIXVXmGWAOpv+2BuLrnEhPhWZNiqasJzkWzjZXoh
	uUz2F1hWNB82zsw6qGkiAl7y0odTvr0utvruHJaRHD+0MM1pO9o/ePn4wZdaf6nP
	BiODUX28TJNYZKkzzX2J6c0WP6y5AK640XYne8NlBaYxPA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x6464v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 21:49:47 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4deb67c61caso78444381cf.2
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 14:49:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759528186; x=1760132986;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CXTO/NJSy1u0WPzx3mtYRDh4ZwyImi0h9HK1EEN2E90=;
        b=FOKTccEje07N4DEg3T+v8+lmppRXTqGJRjWgD66d0zK9j3IOHN+zSf0m/pTw5vUeO/
         wmV8gGGLeY6c/bfDL/RZLs/buvJs5v5HJo7l7N2vq0Xd8c4y1eZkXrAMeIIfzZfKAmN0
         4qwdePjgNqWillNBvLmLrGOOTOqncpGmL4EQHwxTavbqV712lFOgBQohJV5uPQnT/AIQ
         D0TeZZD39IUMVC+TRFwNsuyJip2VmZwl204WfPM4l7GJ8WPg2lcTDmTrz0empdHV6aYW
         H1035NgG7tH7+jdo5rFh6r8KNgVBMVcnO2F87v6ptIJ/UVSJqxnjhcmhGxsPkIGUVfFu
         ePoQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+HJcSAiYO4kj8v/FWuBIrugTmCX7nsoA0ovYgSJLzuqGeGp6k3WVwl9Z9c3JFU2CbSyEM/TbFKkDr@vger.kernel.org
X-Gm-Message-State: AOJu0YxFNQvuEip2oo6/B4EX6h5opfF9fLiYSd5J/MbBNSS+Dc5MGUbD
	xYwVPLSvOQnoA4J//WjHUPM/PGfS26Gqysy5FmXPo8UT7irlcuP3LD5NpItJCRBnRVAdSAweuJq
	3lmCq3pkpJDo7BQJjfz4nzh/CfxDdzdgcOY2AbUaoIYMok/hzICWnA1zQdV0KYVvG
X-Gm-Gg: ASbGncsxrCrVkf8Rt+dMHYf8YqX9JGjR2UzIVtRkSMVtHR+adKAkiGtmpHda7FJWYof
	2enHlpduZ9+ORjxplkBuu66NU3XNJtY7r0NsAV7ReaUv9TeLM/Tq/TGug6G86khhDKIYkoIGg6w
	H1mgWjSMQo/8aJ3OlUXiPBXQ/cswG08rg0HH2WmKkVTCqHKcAoapi51xSDlKAtPBOqZjeDfV5rC
	pbfr/TXtE6YHhSb+dKIZztt5ksmSre2IotIBH0ucC2ubBcYoAQpr8kS2ggwyyCFlTiYhGPDYM0y
	HRPoR4j7oYzrlJYmcwdGZO8KuLJUXt6GHYmGnGZ5QS6DnMJblcSN7LuX+0Nr9dzySH9Hutv1t+X
	k5VrEfSWNaOTMa6GoWsVxHU5Fr4cZOOjcSIAUzxhJGoShoaWdNCs6sTLevQ==
X-Received: by 2002:a05:622a:8d:b0:4dd:3948:3377 with SMTP id d75a77b69052e-4e576ad86dfmr68919411cf.58.1759528186301;
        Fri, 03 Oct 2025 14:49:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFqQ5JrGSaAju5feGXkIeOACPcymH0FWHYpUhlOk5LHmhvDelT1A+t3RRJ22rsbo+36OHGoLQ==
X-Received: by 2002:a05:622a:8d:b0:4dd:3948:3377 with SMTP id d75a77b69052e-4e576ad86dfmr68919091cf.58.1759528185860;
        Fri, 03 Oct 2025 14:49:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0118d6dbsm2208525e87.82.2025.10.03.14.49.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 14:49:44 -0700 (PDT)
Date: Sat, 4 Oct 2025 00:49:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH v3 08/11] arm64: dts: qcom: sdm845-lg-common: Add
 chassis-type
Message-ID: <xeu4vsmkfws74qxnzwmsbvdr76taapa5bvao6notfttu74yztf@fq4ap7hid3yf>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-8-b14cf9e9a928@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250928-judyln-dts-v3-8-b14cf9e9a928@postmarketos.org>
X-Proofpoint-GUID: OGDeVg_vcrKMZ5YvDrZNkmKNcGsVq2pF
X-Proofpoint-ORIG-GUID: OGDeVg_vcrKMZ5YvDrZNkmKNcGsVq2pF
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68e044fb cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=Gbw9aFdXAAAA:8 a=EUspDBNiAAAA:8 a=xpcYJZ5K4HInNErYrfIA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfX/3Ye7CHcWq0d
 wYTQX6jQM9bwQPCk+nunhEf8gBtV0ogGZYK93zSLmCqWnekNX9cf/OFdzTBJufRJPf1qB2R8ZZA
 k0OSxasp8c//HGkLyN5p5YsOKL1dw66WsascaNqS91Te9OyKFlpdsU3y5bhpEnautF2Amsj3tlW
 qVKmJ4bEqXFl/PEn7g6T8KSxTwD6Q9Hv0v0X1Zw8qZVlUEpLqx5Va4bW8n+R3Wu0dDGiwBbdDqj
 o8eeakSnO/D5a/OocCD9I7mp3TWpkHPH/A7+35XydYDpgVO14HVWEllwyJep6Ud5iFynMEQKW+E
 bx4mbw4voCBKW2iuHVPTTDedeIpZrHlcXyeuT/YpH2/GDkgH0pMzbHTzRn+mnPo+YJlgauHsxKw
 T5Qf1A66ljjcyQ5F6rUQjFMVk8AhVw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018

On Sun, Sep 28, 2025 at 10:05:31PM -0700, Paul Sajna wrote:
> The sdm845-lg devices are all phones, therefore handset chassis
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

