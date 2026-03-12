Return-Path: <devicetree+bounces-274602-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGpvGA7CsmmvPAAAu9opvQ
	(envelope-from <devicetree+bounces-274602-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:39:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8586D272BC3
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:39:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 24944310358D
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:32:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E57123C7E07;
	Thu, 12 Mar 2026 13:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dNZwPxTa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JO/PQToa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E77379EC7
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773322325; cv=none; b=Mi2RoVd9dIX37mfUTYJZsoG48HyTzcLtvbg5GPcs38v27fwYExa1MJzLSR/56B4jHgmrs8XyOoDqlH0FkR5NbcsmfPgSMeLQp7caY8bOKrLz1x6+A1VLHYJAxdJIOg+MaObmA2Vk1C2SOlfJGL+Qm89LLmZQaUSRTAvYvRhRiKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773322325; c=relaxed/simple;
	bh=oli4SE9DckFcQdJbcfZE2q1jOchUAMaYwQ7SjYKQujU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NT0xCkHzosXF8yU7+Vk05UsnOdmiZv7Hmy+JuFdDBalX1XTXWj7OxoDuD+EiF2s/rFPzdo5+91f8NGOEwTVwBHrV31Dqn0y2x5EEdmAtx59ql55Ba2GQrYkQm+Z1ODQwOBtK6dNUDlCqFzLl2U/qAo2wgWnly2SeQmfH/gKxB34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dNZwPxTa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JO/PQToa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C9sB6B4132454
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:32:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tIi1PZLcCs/GEgY7TsajP7tXfZ50qkJLYJ0/co37r7A=; b=dNZwPxTaZzKoDxTF
	Z3A3erSeuSxJBzn3mbGY3ItQvz++wVq3sUzD8RuWm5bgG1oC1ygpzSoffTgVT34c
	uA9AMKJjh364jYcu8Xb7jVy5OiyLeuMLc3FhQCF/WanIvAbjh1n+/Mb0cdqsHLaY
	niRKn/b7Gvkn3RHGszYWniUAH/4O1MVVad6ja57+0OL43s/PY1RnpgcbgF5+SKux
	awqOAHcSO+cKIuUmqdpYnkG55XUpe7/WHXQIupA55XH9i/MgIP/dBRTGCylxX4HI
	blwncXxciaCuoaAa+vK5qNslLCZfQYdElTrorjJi/NafjGVbqDr1RoYJG9SI9bCO
	YFWz2A==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4w26tu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:32:04 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-56afd606ff0so2113639e0c.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 06:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773322323; x=1773927123; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tIi1PZLcCs/GEgY7TsajP7tXfZ50qkJLYJ0/co37r7A=;
        b=JO/PQToa6ad0nLw7KTTB8CZrna635H5bWU44adFY3ZgPxP+GPtM+Y8LwKSGprjfmb7
         eUN5eZYbF2fCc22I+ltHyVVo+qS5JmWjCVGebsPi4vRrQmbPkxCXf3sxcDYbyvZEKAYm
         zjnJjvaWQ0RBJc/ZUa9i2MuPVK8eiOWbIIfqpmu24TEGN5ddr7B8W0wMx3aRexs72Bfv
         Q4wDKvqy8eXTOPwLS5LNzgigTUMu3hL37YJqEZ+cHKcfqma81nV7pWHHqya5IAP7lPlV
         fnlc/Q9ssxENDWpeFD43uW2jI+I4145f2TojLRqMfg1lbcszCQ8+gnMxyNrlQF6TbE9j
         Uk1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773322323; x=1773927123;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tIi1PZLcCs/GEgY7TsajP7tXfZ50qkJLYJ0/co37r7A=;
        b=LzRh664tYGYs7pO4RQwNqOD/j6gzqoiONE8ZXPS9q61xzqI88AsbbqNo64WKI/Ftgb
         4zJzSg7jbD1F7dQmoUeRFqBV1YCpcvu6EUFAcYpNHOOUGxePNM8wFQVIE8R3DcQyCcdx
         JD+4qYiYbM3a19dxeZHqw7FoVFozH2bX8uCyRAobjKB9YsmANqsv6hyPv/mHkLumGbSc
         KWk/1ECcd1+e5t1oWd7XpzgJC5RQPs12bV2/Bzd6LVflrWRuZ2JbZjsj4FBMDCph3qPW
         YWL9a2jD1ysOHQO/o3yx4AQgy8zQQ4XTITAHxzm42miDszOExNxUCU8xDnpSHmVSb2it
         qcUg==
X-Forwarded-Encrypted: i=1; AJvYcCVl2Lc4q3Gfrty2xKo6oSCiwVGviPi4sqWf/5M2Rpz7F4MMlZ35NxL+efqhIW1pyUhAb5yX3VAOKsT+@vger.kernel.org
X-Gm-Message-State: AOJu0YwVa07X7woJXeVHWBaBnmmZIy9waSpTe2FOiMUcALz8Gkuhap6+
	yL3Sli+qKUHkOoOT66xcntmXTAwVgfdnpnPKVboMZX7XIEJez+hJne3ceDlgYBIhUdO/1LWh1Ji
	hXx8O7uaOKwf/KAuZdVEP/+xKbpf1UFn4JJLVy9ZhYVVKIkfn7K9G5nuNCzV8ThR+
X-Gm-Gg: ATEYQzwoozQq7ZM4ZhGqFreSeQpdV+umobq8lAfFCZoeeACC4tCxtIGPWx6bBFTu3gu
	1sEsKpS4bZ64mDHuOa9DTngrNLJzAA65ijreYu9VbnXyGHu0Ds80wHScIPjtOfsS1OTa0lKYeDS
	dd9HqV55FS1rWxdFqCn8TWIi+Cs9MumQmmP63Miy7hWTbdguCCNODUo/Ntous8l/wXrOv5F4xQE
	RrSf/ENqD7JA1aj0+LjnFXlw55u/g2wuVaOXovcF2VF+eb3Nj1loxCEeSR7EIX4euZbXdZEqsRF
	BBEdILrAVAWJo2YMhBh8HZZB3j7eSb9llW8i/acT/X03bm5bW8BXxsDS77LJmeYkhOExmxHCO1/
	GWq+UwTe202k2Ha/vpAeWf2knoIKtkBcvRdiK28kCvvwN1iGMuP0V43fBx0MgLsgzWQt1hKexAp
	EVw65w7pLqAT8y6RyD0DuBWqZHMPuxMzX1jxo=
X-Received: by 2002:a05:6122:2a52:b0:566:fe6c:e1ba with SMTP id 71dfb90a1353d-56b47438c2emr2410967e0c.4.1773322321085;
        Thu, 12 Mar 2026 06:32:01 -0700 (PDT)
X-Received: by 2002:a05:6122:2a52:b0:566:fe6c:e1ba with SMTP id 71dfb90a1353d-56b47438c2emr2410621e0c.4.1773322317270;
        Thu, 12 Mar 2026 06:31:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67d617e1sm8656281fa.9.2026.03.12.06.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 06:31:55 -0700 (PDT)
Date: Thu, 12 Mar 2026 15:31:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yedaya Katsman <yedaya.ka@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kamil =?utf-8?B?R2/FgmRh?= <kamil.golda@protonmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sm6125-xiaomi-laurel-sprout:
 Enable MDSS and add panel
Message-ID: <vjpnt6xefyssqlaivlvhtizlnlw7gfsmwtexcc7ukccwhgfeet@egtg6oe6za4c>
References: <20260312-panel-patches-v3-0-6ed8c006d0be@gmail.com>
 <20260312-panel-patches-v3-3-6ed8c006d0be@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260312-panel-patches-v3-3-6ed8c006d0be@gmail.com>
X-Proofpoint-GUID: 6YGRGbmGoPTy7hq1F1jyJYtXoEPEqEZQ
X-Authority-Analysis: v=2.4 cv=Cpays34D c=1 sm=1 tr=0 ts=69b2c054 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=sfOm8-O8AAAA:8
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=bqK5-dEd6McJkE9xslgA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=tNoRWFLymzeba-QzToBc:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: 6YGRGbmGoPTy7hq1F1jyJYtXoEPEqEZQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEwNyBTYWx0ZWRfX3RwH0tk0NjGL
 T03C3N9kiFUbu5eovjSOCnOGlGG7089o2uEuYsQeZejbEVKNVuYDlVzkr8u68p0JvaZZVIXt2jK
 NweArh6C+fykGsFD+1igcNJvu4plI80zYyYewCDVQ1jHB2tJFgqmKSe2IWGCyYtPFPQVDNBmyEV
 VsD66ldlVTZVorQgFjTOLj51r5htb0+8hAK/7+ibruUnlJDRfvwoNe8LV+7idphal0dCeGkhp96
 u4zpU4+6Ct5ANMpPQHuJGcky8qfKdTZIT6tZ8DbBcKdCm5FJCYxm4hbIVsQszcW6jV7bZeo2cjQ
 +OYP3P9qrTzEbrzpV/BXx3gIXFfpHHBMAjOlUuWcALDulcipIc9HkDddMR8ypEttfPWVTlfdzSr
 zCpIEtGRp5/aQDDCKPfM69uFTIQjPPPJRK2x1BcX871A8ukbj1cLwDojG3n5Q5AsRNDcSqR5zjD
 W0DHA5imRq4cmLpfGIQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 malwarescore=0 suspectscore=0 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120107
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274602-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,protonmail.com,lists.sr.ht,vger.kernel.org,lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,protonmail.com:email,oss.qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8586D272BC3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 01:55:10PM +0200, Yedaya Katsman wrote:
> Enable the MDSS nodes and add supplies and bindings for the Samsung S6E8FCO
> DSI controller for the M1906F9 panel.
> 
> The ldo and iovcc gpio pins boot up with a current of 16 mA, but they work
> fine with 2mA, so I used that.
> 
> Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
> ---
>  .../boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts  | 94 ++++++++++++++++++++++
>  1 file changed, 94 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

