Return-Path: <devicetree+bounces-275338-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aFn3LfwhtGl7hwAAu9opvQ
	(envelope-from <devicetree+bounces-275338-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:41:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3366D2852D0
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:41:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DBFC6300D91A
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AC1F3603EB;
	Fri, 13 Mar 2026 14:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PILkyhPS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H/ybNQNm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239C639B965
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773412659; cv=none; b=gMjYZ1IS3QIb0sxJPrXwAsK2y7AwlnPMduaMN5eDYc755xuAdPYNt1kzVyb2HQp0430nlElAyF6pmFO99LuaUzavF6d0cT3sUFjYaYXKFfTc/CyzbwviUsycpzPz2bT1D181ni0UWwn77am+Z3Ri0uGGPUL4ar/YRQ3eWjOgXwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773412659; c=relaxed/simple;
	bh=F7xySl74zn0cQsQjuTTHODAbEgPoBokf3X3L9RU7h9I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cCyCgR79JzU6BmXoJHZJcZECzYVf35p5veMJw/jZjMSUjmXksqnhllMP6i2sFvH707Thu82Ze5R8/E/TYzrVRLo57dWdSXgyd62bqKJK/JPbjds/xlSKO/EldR8bGs8Z5U8+xBfQvRQ94OGXYk21yBycGGXH1K/+7Au+vWrlojg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PILkyhPS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H/ybNQNm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D8vFIR481699
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:37:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9J2Anj2meT6LEyEYAerJqdEt
	YwZ9k+r7L/d7Xc0Epjo=; b=PILkyhPSjcwO0/Ki2QrJFqA+LrvmthW4WZqnBMCC
	YYshjk7eyGWdSaa8T8V98omjj5djhW7FvIx65HgpB+2FjhxPdqR20UQfbbubr62E
	9PvVSKxW4wwjSvgXyfTXvrh97S/cxct57UL1QSad7azhCeXFXrJnWxbwjxD0wwAD
	wRrU9m5HR2hC54QFG2mF47s5qfOXR80NsuGkC5bzQZS7bAOQSQMWb3uwzej1eZPq
	4XIjInTSPS3OCsrGY8h6Qn+SgqaHBxQCtDFInAUSEhSrPBAHOdgbg/4GfTofGukt
	eF6p6DepLsmwUEiqriIDnzsEnM29SUJzFZkOBDg91hARbA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvfh7s609-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:37:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd781c0d90so1800348685a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773412656; x=1774017456; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9J2Anj2meT6LEyEYAerJqdEtYwZ9k+r7L/d7Xc0Epjo=;
        b=H/ybNQNmoWeRP9P+VeNgt0ecclmKwjAYMwtQHfTXhmsJ1lkTBfNMWvK4Ipm9ab/kDM
         sItGQqHeMDPeuAFlAIEvZ642aD4wY5yCEDmWBEBpPAOAnzSwgkhhY+tU2JrX5vOUQFHe
         mQYzDR8grYtgTtVlea90r3S9Bn9V5mRJfbD/08XDNTIRMUKY6wrHJyH2jDn00sp7NEFQ
         z9jCV/G8QyAgUrR4YdSHcUZR/VrNUenqLMg9cX9Z2UappCb+oeTsfQq7i5USGbgp2mZA
         1Moj+vW1D/l+3vdZcmzsdqEvwx0GzgAlFLVKb4Pg2yT6SaebNh638V+ONJJOAaoe4C3w
         EtXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773412656; x=1774017456;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9J2Anj2meT6LEyEYAerJqdEtYwZ9k+r7L/d7Xc0Epjo=;
        b=R470Qc/T0JcZX8XHgPePza/UEv+gSOaap7MIlekBd5NqpigISZqwGGvkMMsyZHvT0Y
         CjJBfQgmoeRhkzeh20Ky4kqvCfELImeDykZKJcljlu02zsg0fvEV2FalF3mGgYUt0LFh
         m44IYHaECZ2GR7bLlYVs5r/B9DdbrehsC0tUirhzVXL8Lkt44j94IcJFX1XLLMGRUnG9
         vVR3CbBaG10zLL2ya8kXNBUPNNoglExEBc/WmW9fjtwNzwOjnXPdZvB+Jl8IOs7t/GBe
         WoiOcjnv0waWzR/bmAkj7aSAFAWt25GM13ncccpzw9iz6CW20tpanA66wNaqa9cS8FZR
         G+gg==
X-Forwarded-Encrypted: i=1; AJvYcCVR9Yf2mtDPym3U1SSKc8TgmMaFUIFipREj5acIbGZjp7rDuZh8XfoLeYjULzTVAk/i9FSNXeYCi3el@vger.kernel.org
X-Gm-Message-State: AOJu0Yzlf+fl0HVgATk6y66v4JSN1mpDLyHFrj8oZZ7nQnXhoqI6Qaw/
	dQ/H2cgQAWAlF8KQtXsFitbXE+nuS1U5Hq2WSelzvyeg9oiCtMUmJQuI1nI5AFHu+UpFZDIu12d
	HxAbfq2uRzycPtSSMvV81vIvPKGi+1lJ8n5Z60wPyLhXSEGyOh03AwC4kDGDGYPCj
X-Gm-Gg: ATEYQzyXAzp89QEtYgGffCbxBCAkd2//w4ej2ZzjEtqaf+E6VEizWQYXQlYiQs2YwBC
	1axZUqc/JP0KPJvqs+JrNghpimKj9QI8vjKjFVSrvJ31X7CnlAYpKkt5YMzyB9YhNOxf1Mbs3fB
	MiQrfxoKglVx9ZFrH7AIHvuP4ZiWChf176DENQz3/4FwPTeTHicdkOshCv1miMFGHVmxy2AsQ2b
	JPo97B4tco+tXCiGiLmuXGB5pTIGAVEf7IAM3TVpobc4Z+NBsydwH4UO1m/n7o3WvTmUH13qqbY
	BOJ2cWQMe3PyprNZI2OTjL+pd7du8/iLNUXtZRm8XRLK6fAAM7Z7RIGAMDslyU1mVqb25nylbws
	Gv/lI9hvdrhEK+XtDByOYGeXYBCMoxS/z3mv2h4dak8LEqL2tXDbTvxCxnmqQhVI65GMzHmqkYB
	Vj0xRIWJlQyAMjBJwT9ACQiupO0iu4kRTlqT8=
X-Received: by 2002:a05:620a:700b:b0:891:7008:f2e0 with SMTP id af79cd13be357-8cdaa779799mr1076812085a.8.1773412656299;
        Fri, 13 Mar 2026 07:37:36 -0700 (PDT)
X-Received: by 2002:a05:620a:700b:b0:891:7008:f2e0 with SMTP id af79cd13be357-8cdaa779799mr1076807385a.8.1773412655691;
        Fri, 13 Mar 2026 07:37:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15636a95asm1578277e87.80.2026.03.13.07.37.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 07:37:34 -0700 (PDT)
Date: Fri, 13 Mar 2026 16:37:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: Enable USB OTG on functional
 Type-C ports
Message-ID: <y7sxgdmxdn6fthnxkmhs2ja5hfw2mtbdl2zfqkfocn6pwnwxq2@cuoldngtvuht>
References: <20260313-topic-x13s_otg-v1-1-cb2e4a08e25d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-topic-x13s_otg-v1-1-cb2e4a08e25d@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 7skbjCzLLAs9JywTqcB3nMg02VLSHHzv
X-Proofpoint-GUID: 7skbjCzLLAs9JywTqcB3nMg02VLSHHzv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDExNiBTYWx0ZWRfX8HNaF94nQW7R
 0us2F80Jgb2hz8sAXsVGVf+F4pMlwSd02sFEk4jlGso/3Jpr2dcy3khsIz7CIyR8/7P61bMs5vG
 IrGjhwf+kcKEN+RGXO5CKk48ruU5Hv5Rg1T74xq+mwr65jcu21yRjJb8xwhk80SIiabN/yjNZUN
 5vxLHDFwiB5Zs9Tx3LQn9kv/R7NTM74bZ+h5OrjYeqEPMAlQgM9180GghVAtwYtznP4njZMNriU
 i+yV1fzHU71Jl+/QQbpqfExfNCNrCU3gcs1VisyrlWQpzoPB5CA0CgTZ4YBN5gtmDz4mJKvXM0v
 cZpr14iWfgILmlUcBP+Yn3rvO9d26Qjqen4sHPWsO5M8s3T8tHS7CicLh2ib3YZ4R+35VRkxwhz
 dWIK0IQ2nqZqyJtRa7sWlXA86ir8u7HD1b8uwk2vx8t1Zk61zJ8kJsDU1l+qyiEhCZ8LLwvC5ML
 OgtBm2fon/J/PvEHOww==
X-Authority-Analysis: v=2.4 cv=BpiQAIX5 c=1 sm=1 tr=0 ts=69b42131 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=VaWUvndo8j8N3dpmlaIA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130116
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275338-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3366D2852D0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 03:08:03PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The two non-multiport USB controllers present on the platform are
> role-switch capable, so mark them as such. They need no additional
> plumbing, as tested on the X13s.
> 
> Enable OTG for all devices featuring a data-role provider in one fell
> swoop to prevent hitting the edge case where UCSI code would time out
> trying to get a reference to a struct usb_role_switch, which wouldn't
> be registered if dr_mode was set to anything other than (the default)
> OTG.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts                  | 8 --------
>  arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dts       | 8 --------
>  arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 8 --------
>  arch/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dts     | 8 --------
>  arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dts  | 8 --------
>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi                     | 4 ++++
>  6 files changed, 4 insertions(+), 40 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

