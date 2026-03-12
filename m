Return-Path: <devicetree+bounces-274585-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPUKFtyzsmmYOwAAu9opvQ
	(envelope-from <devicetree+bounces-274585-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:38:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 601B4271E8D
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:38:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 85D5A300C6F4
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:38:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A01E0377ECC;
	Thu, 12 Mar 2026 12:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qa+INA0V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LB5mbZpp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F14D31D367
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773319126; cv=none; b=CWQuOI61A9n0ZSRq6KeQzErnftR/bFn/c5h+ea/dTNM8AvbL1aalRGQ1SAgkdTryU8IqIWD0HQgkJiZzWHd03bpwXf8ojefvGkX00zjHnq/hRRLZP+WOQ3zcw+oNl7hFFFw6+rw3X7snee7qOVeO4OZ3zG5+dA4mHfvAPoYdrUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773319126; c=relaxed/simple;
	bh=zACpLgsif1HX3UIVhszs+cVidIvE8f2Jr6Vp8AT0tCw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YxfTF7WOeT0w+9gFjwiOC5olr7MeljpLe6dYIGaJnga3VRET2llRFrf122PmQFoC8wiYsdYftIQF5m7Qkm+CId7LQXN8NvFtLARgfQ83dPynmPoG6JT8KlUQYUzo9QhcL2svWy/vLhzCmlzp9Cya1mD2ADUVnKRSS9LeJ2cw/DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qa+INA0V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LB5mbZpp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C7eEJw510096
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:38:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VpQ4SEdwxBmvueD5t0DDAjzG
	WQB6ZzRRo52i7ZTd6CE=; b=Qa+INA0V1nSQNFKgzWp/vuwZ3Ke0fgaJkZta+ruN
	cSnIUPzWg+09Uc4eBE3c9gTEJhZe3W2CLbcT/96KSbOPrHJbjztasJ6OnDa3VVog
	4LxCAv/x4Oqm8Bv3JkhjSKksBtLG93n1I2tpcS3LcBLad2NVb3Nt0gUh/oyTeQD9
	+5puo7aj4F2SNQPnjH4muKL0kzICV3AmvOuxQLaV9nxRoluLotyJQJyuUmJEyIah
	Yi+8IbFVQiYYbOtiSCf9sFgVDqoMpQ+UMfLXzGtv+MDL9HzaXZeQk6ulgg6sPFP5
	YAQQrMCY4T54z2XjaNCqES/jrbvdtfFqNE62Oabg2Wy0Lw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cus9w0r73-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 12:38:44 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb0595def4so796850085a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 05:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773319124; x=1773923924; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VpQ4SEdwxBmvueD5t0DDAjzGWQB6ZzRRo52i7ZTd6CE=;
        b=LB5mbZppLlA/ylE5vu1a3gDUXvD+4/qrKA/6MZvDlcZSQ3vLdZ461vVoT51GvMtoFV
         i00Y83JAAktqNUqNpSHA7V3P2FUOnGlkc48hzpn37g15zSVkZi60qKrjMzNda4cJUFGg
         /KvI83/rqAvChbAOo68XvIDYBAk/dVTTSZdct5pZITOJiQyxrkQY9fXBxxfAlIbDMoea
         5eRUhYiI+d4PRxB4dtN4Li8y6p7zhZWa2GTHWZQwwtRjVjWql+zETWFEbd3Zerz3lICx
         3Ia6gnTGfxte9vVLUPOe+ms/8nSQDVx/RNDkdD4iaVY0mgogMN4uX6RxxVC/mRemTVKx
         ePEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773319124; x=1773923924;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VpQ4SEdwxBmvueD5t0DDAjzGWQB6ZzRRo52i7ZTd6CE=;
        b=RCDUYKD6KthkTqz8d/ggAKdBS6jHjY1AYNJSMdbuq01f32j97CKt3elWl6EXE6TZde
         2aoAl5gkomhXPuLwKb6UVAWaBXTwCmGEPeMkNgtq6yJLy8jB+Er/nkpu+VPFS2o++XwC
         MUq1lhrerNxm2zCbKlQN1WyuqYHmSoCmzaP3xe1erdcy3uOwyrWeuxDYF9XmooJPTX/8
         5RC/2RFMgEtx/k6TvWaw9JN4WzaoyzPHUJtYbKQ2t3EKLC7I8IcY/NnQBrU7uQ7j6o7d
         OSnC3P+bSYcyn1paTpP6ZvMJWnHqBUmtibtbmRKMlS/JP+cjtLYsQ9EN2M9iIA+IBKjk
         7p/g==
X-Forwarded-Encrypted: i=1; AJvYcCUJJQ2gI/9CH51xijx8QOyXEEvJ3S19v9bucFjd9mX5dTET43d1k9VDYWEG6odkDp2ofABlZx1WMp0f@vger.kernel.org
X-Gm-Message-State: AOJu0YyuBd3xgH45KVn0bZLE6q9DtVwPDJ+7hCAGFT+hU9XkyP43xDgy
	HvKWaYQ9LsG1HkrxXlhcBApTmRJ9UpgCGiXYqtDVvls0hABKXuccCDhALRtwSQUpJbuWNBaC/nF
	eFeoTCAwgW8vabTkQYqyYb1dgZ/xQiRJzDWdrubP7sMwM6v5XewnxcMa7Q/grUvsG
X-Gm-Gg: ATEYQzxAIe6mn/NyCjhapASkdnAtYJ5zjk66tJgWMj85x3SwFa4rFEJVtls9Lfy260A
	2DAiD5HKGSisZU61ctajU8HtIRT0yV1zB4uLphcW94rI2dxs9ovDVKmag8d55RLaei/t6mnOyVV
	N/VlX7SU3XP7dOCySl7KVpgKy1y8st8oLo5XQHH29zU+1CpYQyXMAehTmXnNG64itqNVQXDifM9
	isBNNvswvVtOmR9PFX2MYEx/Mdgpt/2501qPjFcH6dXC5X91ZS3togORlvWnhl54VsNSTdW7yEB
	G5dKxXV7JxFKT+Pz9zuWwy5Lo6QZybAb2tDCaJLS9WGl8lhEo+LLI/VOZP/mPec4wznEcSujTwi
	enm1mfRpr3UE4DjzY8pkxSMNjc+pLtU3ZLNKpCNRaDxYpgxyABx6AYozo8B02+KS4/BBOaIMn8e
	LC5xvkR9GJoIk7YJHpxOXxpLibrJwU8yX/2so=
X-Received: by 2002:a05:620a:7114:b0:8cd:9405:9662 with SMTP id af79cd13be357-8cdaa88ceb9mr441487485a.36.1773319123623;
        Thu, 12 Mar 2026 05:38:43 -0700 (PDT)
X-Received: by 2002:a05:620a:7114:b0:8cd:9405:9662 with SMTP id af79cd13be357-8cdaa88ceb9mr441484485a.36.1773319123193;
        Thu, 12 Mar 2026 05:38:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15636675csm956770e87.74.2026.03.12.05.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 05:38:42 -0700 (PDT)
Date: Thu, 12 Mar 2026 14:38:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wojciech Slenska <wojciech.slenska@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Alex Elder <elder@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: agatti: Add IPA nodes
Message-ID: <bt4tv6weylpofod7j4ft7ugzupzjqqxx2eupaxexyoildmtzns@kphfbbizssp6>
References: <20260310112309.79261-1-wojciech.slenska@gmail.com>
 <20260310112309.79261-3-wojciech.slenska@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310112309.79261-3-wojciech.slenska@gmail.com>
X-Proofpoint-GUID: ngktPrq3NV4-WgT2qEFY1rndS4bWSFxw
X-Authority-Analysis: v=2.4 cv=IIIPywvG c=1 sm=1 tr=0 ts=69b2b3d4 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=pGLkceISAAAA:8
 a=EUspDBNiAAAA:8 a=XksiSQqrTY_tai9pqxgA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEwMCBTYWx0ZWRfX+TqUmnDTD/a1
 f8/ufUUzICOoe4mxjhuGAAkf40kmtXEQvpDvUdCcI35zNljX0Y1NRolIRCXDBg5RrCC+tK+huOm
 U0TpfrTsQokRgHd2COCSJT8vYNiBoW0Z/p9erXTH8AhknDXwFz7sT57tADsmQGU+5npvtIQsIru
 OyRIXs102h+UrL0yvHAqGAaXBTzMAq1/6BoRv034qhaJMAUfeEwYQP3GNhI3w+1sulC1/9zmBB8
 T7WmBAQJs3RLo5JZrbRMD3lcTuBJMaghmDjci5JX902hxwkeOwzMOp76YJiH0GcBV5dKopRnFkx
 AMLyQW9BIL1qXchYFggO9FvuRO45BRZTEebJuhH69j8lAzS3RDpYPuAowprwYQGn8mEeWGw4YwE
 fqZJBpWWdCIjPDWs2Svh9TkEcl/sjbe2aHzw6Bdwh/NPaQDOz3a/8Ggny2LaEpOWc3NYSu4cb8h
 Apjy2tYCEOHZCBTIxRA==
X-Proofpoint-ORIG-GUID: ngktPrq3NV4-WgT2qEFY1rndS4bWSFxw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120100
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274585-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 601B4271E8D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 10, 2026 at 12:22:31PM +0100, Wojciech Slenska wrote:
> Added IPA nodes and definitions.
> 
> Signed-off-by: Wojciech Slenska <wojciech.slenska@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/agatti.dtsi | 53 ++++++++++++++++++++++++++++
>  1 file changed, 53 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

