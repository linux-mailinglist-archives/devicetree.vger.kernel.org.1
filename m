Return-Path: <devicetree+bounces-244839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8819CA94B1
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 21:47:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 74B50308903C
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 20:46:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 073822D780C;
	Fri,  5 Dec 2025 20:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mSBw23Lg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FLHxo5hG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EDD1DF75B
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 20:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764967607; cv=none; b=dOI29N64h+RYZR4D6xPiTqYg+DT8XvF8Gasg3PbA09hY0nzN4Rk53IsfeuQZ0fL0rjhqg7CkglLPGaSaFpb4IXAZo8JumcdxHl7j3E5qWeweEUnOSu9iI86YDvvBorYtzkuFKFXhx4IKosJPYHhqQ+mOI6ZGzCwZ8I896F1W5D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764967607; c=relaxed/simple;
	bh=8ziz5TQHdnzit1ggklKeTA0lwLtqYJ+zsTWo5biHEXg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t8IyWBYRvY5fao0l4J+Pk+iqm3JXi4kYpX6Ws3AjHVyoPfVXFwpEs37Apf2MnNp27vzhMPZ6kCGyuwYbVInh6vdatu65LaWidAPU4DOfCeq8ea7lE7vqgk3csmqb28ixUagdq5n5WVM18s5cLN0HBQ8QT3DFDb7YEJAznC4j47Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mSBw23Lg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FLHxo5hG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5K1ppZ1643644
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 20:46:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rvBnu6Ta93G7OrYfvzXO7t8f
	cURSD6pM2QuExUQXjbw=; b=mSBw23Lgl2KuLxHyd2k6l0pPXqc7DdlA8+Ibl0U6
	A4EyoW73D6UAglI0UfghzLaLAyIYsTpLKfQsRh9XaW3D/zIyH56eVK9VuBoyt4JS
	iQZkE5SLFkoJzg2qQ13XdzmVKTuM7ZcXSEeD09s/dhVDVZH7yBoWY6pADQGjrzaE
	sC0BtWh5vG+FsXJ5nzcl9ccVYGjtgXD7E+OJVx08f19ei2xIB3WfzaLb1SMQqBg8
	YLEh2h7PtxKUAyTsHne+98elPqJOkIX7KR1CVbBJQXqxGcahkNiXPS9Ln+qo6Yai
	LVXG3g8oStkBI9k90PBHHvyP45NJ0GiycCnwq4hVoQ+PLg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4av62u030s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 20:46:44 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b52a20367fso673073885a.1
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 12:46:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764967604; x=1765572404; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rvBnu6Ta93G7OrYfvzXO7t8fcURSD6pM2QuExUQXjbw=;
        b=FLHxo5hGai1gKfABTwmGb7rPM9f8dCcg3k0LvIaU0MsHaJCNg29JsHufKqDVjhdLT+
         CoCM5au/zRL0YgQauXZntc5ZQpdcUZPHzN9EoPj6ZMMC9KUbO3xXFsvjzovm9A84eXaH
         Vk+kTY2gnXq/3Bp/xob69AW71K4X34U3Zop34vaasw5KfuH7BEwpG9ICcWS8nJuevdE2
         PuFzGLZVXVUw2SKiDurOFWa2BFrci6waBHzTZsXZIQrNZhSaGkL57Y17qUS76SXT3H/D
         ejg3/Ek/MmQYdeGDJYhFZEgj+AhHaS9wkZiddQQ3pcEHjMP4XETYuZyioEV/5H1UeHHb
         leuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764967604; x=1765572404;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rvBnu6Ta93G7OrYfvzXO7t8fcURSD6pM2QuExUQXjbw=;
        b=Qsf1gGeqKSLEM5n6w3eDgHrrVtoBGOvO3/Sknxxv6+hlGrxdOWY85IE4YqIyvCSbx5
         5/k8DBtergFscerv9w3Iao9OApk9hVkDBMbEMGqF9rZ0CtnxS/p+c/Ysdjen22ndMAnT
         CRKjp1ZLY2F9SFdzL5XLTLjIZ0kHP0J0+A95ihJh32Y+jPK6lFxJkPt3cQMXiNTZVlHf
         PcXHzLTfUE6OfIAyWHWvMHOHbJT2f9xlF1RGcd1QU0PCmLRwCBrW4AmiUq4l07f4Xyqc
         WfFXhP7nvpFRRIhABvG8ehvGit4olGZEe49s4tYb5RNgS4AoKlTWGIh0T6NkrzbePklX
         fDjg==
X-Forwarded-Encrypted: i=1; AJvYcCVjoxGg6jdUokTtQW5C4AgNdUPQNrrl3fZzEssCXoUHM/tNbz5yTQYxJahuW0VikmWZ0Js14FA04siH@vger.kernel.org
X-Gm-Message-State: AOJu0YyguVCZD14plk6/CsJlPQKAtN/KK/AD0Apr/cuDG7d/g1XMXYHd
	2P/NI++WVWyZ0FYtNxG1ODtptyjtKHdjVvd+b6TphTwG1OEKqZ09NIHngUxapCFjJUCfDBC+B8Y
	InTNkzbNEvI8A5AXqGFlowvCZtO0takaZkKGTpAXmysgWnIQhpNczyZtqk/ehYpxh
X-Gm-Gg: ASbGnct5a9Er5gJBWgVuDup3uQHnw4490IMZ1v696jxhrpSbrs3TiBK0/I+uGz4HTwp
	EPTOJHBd5llIoaKLo0FZqnCf9Qm2zspnk7un7zSDzSmYd0GwBdgSOo1FJa7h0JQjyx6WJMJM6Cf
	U/b2PkVP2rW7S1glyOXyV74fBd3oUN+4+5uylZVqiwdtsSQrAm4/SmakgkfIsqw74yj3pxSL2OJ
	fQnESbU9WEZ/6FxIyaHaZEXkkh27paPzTPLNubBAxH+6MRzWZoTW2dFD5tm2AEaRMEernFoNc+3
	ED7ZGegPiEFqzry14TUJNsSvgh2/QRzGaWpqFCmwoAsI5HGyAnUTgRge2Guk9sqdvXLEEyL+LAP
	IwTCHly2USWgxl91xPTwrX38CuMVEN5vruv+vJ3aoR7oNabO4Ec8biTyiNnFgLxVwszDAabFKV1
	iGDbLftm8trC9XGTufhKOpxek=
X-Received: by 2002:a05:620a:280c:b0:8a6:a566:60cc with SMTP id af79cd13be357-8b615f81d15mr1314586885a.33.1764967603674;
        Fri, 05 Dec 2025 12:46:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IELetrdjc5iMqya/VsgkxiDLcwMoAF/X1N9KRnuXZaL/BQ8YnfqsONxTkvK50pwBnyJns8LOw==
X-Received: by 2002:a05:620a:280c:b0:8a6:a566:60cc with SMTP id af79cd13be357-8b615f81d15mr1314584085a.33.1764967603259;
        Fri, 05 Dec 2025 12:46:43 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c32692sm1783250e87.102.2025.12.05.12.46.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 12:46:42 -0800 (PST)
Date: Fri, 5 Dec 2025 22:46:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: longnoserob@gmail.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        linux-kernel@vger.kernel.org, david@ixit.cz
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: sdm845-xiaomi-beryllium: Add
 placeholders and sort
Message-ID: <6xr43qpael72epkdagbna6k4ny2mhhnkw3gzyktutpam6tit62@43sj2oglnzyl>
References: <20251205-slpi-v3-0-a1320a074345@gmail.com>
 <20251205-slpi-v3-3-a1320a074345@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251205-slpi-v3-3-a1320a074345@gmail.com>
X-Proofpoint-ORIG-GUID: 6ZP2X4SeL9tCBEKU_UpjyCfA_V-acEuj
X-Authority-Analysis: v=2.4 cv=VMPQXtPX c=1 sm=1 tr=0 ts=693344b4 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=kmiW5B8qSYufVaGmy2sA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDE1NSBTYWx0ZWRfX1QbdPMsEXiXH
 SiV5s9Ph6YoOoN1J7Fb7bJudtmlWy1iK6tb//KOfuFmajDfxx2Jnox7k3GnUWOBqWi0h1znxa+L
 b6yiBor4Q5OawEc4StqssSaKHJsGiXynnJyXJRljAVM5M55rkloarV17BM9HQ3QJXymApCxKwTE
 PVAdHJQyw2Gay0PL9TiRUkH5+X6MgXRqNidfMwySL7C+z5Mok9r3tQdqtPZPflJp0M+RrzX5ocF
 ahZ1xIOjhbjyKfUCnvDLSHegyp5ZsFZsUfqcGNS4MjpHoyyaN/YpYOxuhEed2UDwKQciyNfiPQF
 lCGL3cqmImki2gGRzwIkH0AUDlnP6jLy+7l25MKZJNqAlMkDWnsNoH01X9Ni+yU8PTVeQxT1itv
 pqnrEVr1UQjJSxm4siCUAEpDxQfHSA==
X-Proofpoint-GUID: 6ZP2X4SeL9tCBEKU_UpjyCfA_V-acEuj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 malwarescore=0 phishscore=0 impostorscore=0
 bulkscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050155

On Fri, Dec 05, 2025 at 10:59:01PM +0900, Robert Eckelmann via B4 Relay wrote:
> From: Robert Eckelmann <longnoserob@gmail.com>
> 
> We know these devices are present, most of them are supported by
> downstream and close to the mainline kernels.
> 
> This is very handy when rebasing the integration tree with the support.
> 
> No functional changes.
> 
> Reviewed-by: David Heidelberg <david@ixit.cz>
> Signed-off-by: Robert Eckelmann <longnoserob@gmail.com>
> ---
>  .../dts/qcom/sdm845-xiaomi-beryllium-common.dtsi   | 29 ++++++++++++++++------
>  1 file changed, 22 insertions(+), 7 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

