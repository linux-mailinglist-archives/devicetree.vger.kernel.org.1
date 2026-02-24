Return-Path: <devicetree+bounces-267691-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEdKBZETnWkGMwQAu9opvQ
	(envelope-from <devicetree+bounces-267691-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 03:57:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1D11812FD
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 03:57:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 659863139779
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:54:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECB2126B756;
	Tue, 24 Feb 2026 02:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BkjuwZjK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W1uIgjWc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDFB19E968
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:54:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771901669; cv=none; b=ijN7N6IulwiIsXEhufDmu/GvQ/tf3pFUGYeBZ+/OM84pVvAiTpKWYVIRDXRNJ2Ucz47jm8j42ZhUx20CXjwYlG3ZFFDq8PI0pEySCbemPE2YXhBgcQ6EQucfmxC0/Pp8k74Fo38yJaZgzTHvR4OMsR59nGylxzEQeHXWEQoZCm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771901669; c=relaxed/simple;
	bh=9V9JkO127PuIaShPxH8QEFhIUGMbTUeY+yKtEJFoC+M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ih68FQLFIUgoATjnB13jWnIg8tXjSlaKf1cf65bO2BEhA4OZR0YCB3tfFcg3Ci2H2GoKzGgkP/yvgrGwYqh5kpRh+MUrSM924WUxKPadfZ+V0fa6Mxzj36aZpng40iqfjbGtyVkqAJufhDu6/7Km34s8Uufl8nSznisTVTU3luw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BkjuwZjK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W1uIgjWc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61O2lp08498749
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:54:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=27P8vt/3PU1NEyZL12Qoh4+T
	QwQniBL/QauDntcfqjA=; b=BkjuwZjKpk+fB/G62LSBZt95Xp6Y5PyxzLaLA49M
	2Ilcf3oPeIeBQklLyVEC+CP+t0zPaSDcKpTBUdi5jg0JDQe42eOswXwXdI3r3iOo
	cXxWFA4RQIJjolP1kE4YGfRQXq8a5mrcoiXjOzPLMQRU8lXBXqoTnd96ZAavmf/x
	oFNODArnJiK0lXIrwkTfTve6qopqyX+zCrrWw5V0FjMBahGzQLjcz+8k8xj3/o5z
	yP/Wyotopet0kl1BL7nwELAsa0GcX1IMHc/N/MxMZ6jocbyCSMB2YiDIa4/r025s
	Ee5I1DIz+6proFZPZC+NRMoG5zeTuPjR3DhdJuEtjG2cGw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtv9sh4p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 02:54:28 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb3fae6f60so5892114785a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 18:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771901667; x=1772506467; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=27P8vt/3PU1NEyZL12Qoh4+TQwQniBL/QauDntcfqjA=;
        b=W1uIgjWcNf5u4hwjepvy7IYeLtNNPaY9q+XREgNVnifzUsuIAefqqRkx63jWPcygHl
         BKCRNB7WKd3GgnTpEUyeOrHScZLALSgubMbmZWCcApfY5tjpLym/onbi1NKFNtHlqiem
         LmMT4s1OB77o/4o5B4eUraLl+tS2zQaercF3vuVyoBzkFtzEUuPf6dgzOnwMaElIm/M1
         UFeNaSzZf+Z0ck6cDsOs9YGseoJ/7smFYBNgAFhzCIFAhRzCwWoBARA8dPhPttODSbmo
         u6I+OkkKBuflFOfN7csh81jLyJkk8A2He8D4vLi0UPaXRaZ/MSdixPnFQCOkwX69zCAA
         fvWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771901667; x=1772506467;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=27P8vt/3PU1NEyZL12Qoh4+TQwQniBL/QauDntcfqjA=;
        b=fw1l9Ye0O9z7UNEo4p0nZqxoRiN8L/jT3/s17RL2n/K8qX8wO05Bd/OwtpzrNclcaa
         QJtROKJ0Ypt587vxDX5a+RE54M34yTFFfbyJ7xYsUYrm/rMiRcOXPA5MFciYoBlFbyNu
         MLfpN73PPNE4bvlLQXDbzVeHMttDpvw7qtw/2amQzeg7lemt6VpgqiRzbKQq8yyYmFOO
         5YMxU7raXgEuKO/y/Q5sUWbY4Myt26HX5jdehIpeV2Ee/AQSsS/8Pa8GjF1b1hP1ikPx
         jG2i9YOXe4QBPaY3HwMtQJN8zl+IG3ykNkxwfKrTakOpea7g/uxl/96B/wjjr2rbnZZ9
         BUCw==
X-Forwarded-Encrypted: i=1; AJvYcCXUnMQCW+VWWuwj0ulz/74JPAV5HQQMS5Cc1QRV9Sl5XKmJ7rXHyGthuksNfq7hU3YUpcbILzWuaK5D@vger.kernel.org
X-Gm-Message-State: AOJu0YxeCj2q8xKKtklsmMox5bBXnk9r6q2gc8b6OGEX16CpcHOiwUJc
	Kq2bb2CvPDO8L9wYfpEOMDIZY5NwssbgqXD7crWApCaBupeyuckb7zVTibtgvqYIO/qDVvRDBQ/
	k099o2COlaX6JRvzeyYr9ASvJMQPYeykpcUVMTZrMNIJSE599LIjlQOZugxr65YDY
X-Gm-Gg: AZuq6aKxO4Yel7iS+E60dOxbfFWk0FF+fh+ZAsmHuWnsVpPJUPyf5GulZ/VxadyRVVa
	QqlOVQ4m0FaZun6h67/O7b7068FdR2oUP72viiVkcpfhW6cWXeewcP54ya25fsk5hhaDzuX7RHl
	QO3J6p3Q+UqSCLkI6uqhTyULS/hr5N/4EdFDmygukAkIUBlMGHx6Co5T4Sxb850pqbpSgxJHVUd
	3GivjNn0ogLjIHXJjY6joIlksPtyMrATCcv46PKGDB+b+dPfsnuCy5r9LoYxULP3sZ+69A16Kmu
	sb/PxKQwc6wGTq1YAabqPPKSLEPgn6jKWS/2qw4mJCK9fAgKjyNGukFUYsK/3FHy6UxgXfwr+zN
	B8/nCjVOXcK2orX/fzyFf4n4mkH6VQZPcccD17EA/awRDOsgKmDZQtxZquPFZHO7U2HGTGiukdp
	iFOLYRIJ9jbaOFQDytWhVleDrxMvvx/Kflng0=
X-Received: by 2002:a05:620a:370a:b0:8c8:e139:b08e with SMTP id af79cd13be357-8cb7bfe7d0emr2010287685a.33.1771901667233;
        Mon, 23 Feb 2026 18:54:27 -0800 (PST)
X-Received: by 2002:a05:620a:370a:b0:8c8:e139:b08e with SMTP id af79cd13be357-8cb7bfe7d0emr2010285985a.33.1771901666793;
        Mon, 23 Feb 2026 18:54:26 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a7a1ff7asm19077641fa.26.2026.02.23.18.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 18:54:24 -0800 (PST)
Date: Tue, 24 Feb 2026 04:54:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] arm64: dts: qcom: qcs615-ride: Drop redundant
 non-controllable supplies
Message-ID: <nv6lfzsbuovujvcyo27igxzvgksxaaskmcsvlkpiwhfrandswv@nbdeelzc5fv7>
References: <20260223-qcom-dts-supplies-v1-0-f90ac885b3fd@oss.qualcomm.com>
 <20260223-qcom-dts-supplies-v1-2-f90ac885b3fd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223-qcom-dts-supplies-v1-2-f90ac885b3fd@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Vaf6/Vp9 c=1 sm=1 tr=0 ts=699d12e4 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=YQIQ00YL77e8QyTPvtEA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDAyNCBTYWx0ZWRfX/QTwVX5lK5gT
 gmtSpuFjaB00UM2ikuoQ19ltO2afJO7visIfyhPCGg0R2cRmqaZKKIK6zmu+h8+LrIkzuNptOE7
 35f+cZYdbWeO3Zy72dSXOCCAnNVnlEkwLVehYxKl5R22rCK3UJYtKeWWFPIzsFC+rjeL5+kh+kc
 9jxYAM/db5ACvv6L79w5OeK9k7CKN8MaHIbqlnukTlYXuBcZ23WtD1Bhe7l70BmOkVeixYe+mx8
 vpL1x9LlUul0WXTO4drR8KHYXZLMB54Or32vDVx9FLW9mOduUqd+jm8EVsPeTfRCAPfDSDCmnRQ
 95arzpwDvlntkOdlTfVRg1Ccq/UwCyaI0lBpOV4FjQroaPxtmvf54LS5MGkHgej/R/o9QzTL62X
 UKfQpYBQSRuwVaPNtTyeyXEuOGt79ixSEB5+lM5dZXR0nBgWhIUP13h7T9g59A4XKyfqgW87Qrs
 6khzvED1Ln6BnfPdt8w==
X-Proofpoint-ORIG-GUID: iikiNKPnn16xbCZXG7-1BThppMxXbpM_
X-Proofpoint-GUID: iikiNKPnn16xbCZXG7-1BThppMxXbpM_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_06,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240024
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267691-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6B1D11812FD
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 03:54:18PM +0100, Krzysztof Kozlowski wrote:
> Drop completely redundant non-controllable chain of "regulator-fixed"
> supplies, which serve no purpose except growing DTS and kernel boot
> time.  They represent no added value and because of being completely
> transparent for any users of DTS (except the bloat), they should not be
> represented in DTS, just like we do not represent every transistor
> there.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 26 --------------------------
>  1 file changed, 26 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

