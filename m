Return-Path: <devicetree+bounces-277306-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MrTFze7umk4bQIAu9opvQ
	(envelope-from <devicetree+bounces-277306-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:48:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8892BD7F4
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:48:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 52CB6306A517
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C05773DD52D;
	Wed, 18 Mar 2026 14:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QAKiEhoL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LqmqsVT9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A262C3DD512
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773844921; cv=none; b=O5dgF7ixdlhQqY8VktnVnutFFAMuu+gIsWPPCIObDyn+zBDQDzlBmJEOrcxwf10yGBtoZ46wpSprs+2P5Ao1EPShGRbASDbnUIFKw9M5w11ejMO4p5h7W4YOkh6dB0QqujSWxiM/UlK7R6xLAoBfGH9e2/vbu5rbshM4cbwvQqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773844921; c=relaxed/simple;
	bh=88/4tD1UMvGQTh10XCNWmYrjiU25NgdqCEgiupFb7RQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dLjFjgzc8fKGGiS6LmlYuFE34iVge+GeRqSEh/IFc/6jn/GVjGpAiz6H0uNtv0k8EaVf1wRfDv1RC7ljWPqSBDJ+wLmcvO3nEBKxQT1yl5QI2lQcz9avOca67Ymuy7Vwt0FxJbmnMgJo38uFu3qNs8awOHhwQ+40cBvF/vewwp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QAKiEhoL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LqmqsVT9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IBB9Bs320091
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:41:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UCVtWlsO3NLtt8U2SVQN2B9V
	E1D5VvmX9n00rYrAV7I=; b=QAKiEhoL0UMDkjrpyb2DlAFGsZijCthbMZWSmtUe
	Qyj9XYSxMzmnghE/0bVcz0PQdJzTCI/0yVn/X/m3zKZLVSHkiu4yXVp23CMbBCK3
	Hmw6Wm3CTt85uup6i5ChgxP1Oe8gt/7kn89UNyLEcPoVPHJ6ImJZSCM93atVVzCp
	M8SuD7/gKPmLKWyn8REzGt86XBklQaKhvdZXIq2be/zVS/nRVGltU5bjRD7k3V+d
	/qi9o+oSZzVDjwLs00mNi3U46qUhLBnHatvV3ROZB33aUrua+9BIA5lT+s2prqAk
	PT2fVJQseQQL6SrQf0yvNwRVLUbMWlvMMROO3JXKYv3znQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cytxyrq0x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:41:59 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-509177a915aso80661251cf.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773844918; x=1774449718; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UCVtWlsO3NLtt8U2SVQN2B9VE1D5VvmX9n00rYrAV7I=;
        b=LqmqsVT96YTrPF0v6joUnR2Y0+aU1tDfISwdVZMyXfqL4zF2x+1HdXhMYXieWwuqjG
         bX0ECqz6hUwX/igVJcYxKPwJx4nlAd2OGgoIlMGzYnV83FQW4TMWHpeKcBOGGv4R6/a8
         63l4MVJGsd8qdZehyIplziK44PKwYrNSu2oFWJIvjK2g/p2W7SPOsE39K1UqfFV1ZCP3
         JrpvGy0KbYqLBr8quypSSNQZCSp4xe/FPfDXTIFruyCg1IAB/z939Hg7Blg9vQ0wpIKA
         YIEd3u09885h874NcVgsZyQbZyyMNRiq7K8L9YOhPBVfpa/0VzQAtot6XfwarDhI/40f
         DKjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773844918; x=1774449718;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UCVtWlsO3NLtt8U2SVQN2B9VE1D5VvmX9n00rYrAV7I=;
        b=NB1UduFVDCUKRbgff4WXx3WBh8NQeCUIl/QaM8UZKQtkSLAUkyB+5iPK1dQVtjdM+t
         0fuo4RsSZGxdUWlUUhum4NloOLDgcVXt8M9kkHnO8cm2RgR6haeJgq4R7kWisT9zjPBO
         XtgBb+I9lWc8qyGBsBwfnCuoZhCNyDKtotWHKt+JMigTjjmpbyGQd+6mzGxNKQQwgzFm
         cGwGJyyfuQByJMNN/J3uHwU7T6I1gyfIArV0u19lM06h6RGfxZp7vgk9NlThi3+UyVUu
         CzzTQCkSgcc7z6sK7PiY+e9tLflQwTAJ+8Jp75rjgn/tEmZjtODBq9CLi7MNP1sMudnO
         3fmA==
X-Forwarded-Encrypted: i=1; AJvYcCXWijeBPxM4vuAqJEDg+PkCeIeIgWqqwKiBD0nw/qadoP0q1OVD2Oqtp15bdhmKej0perKJUJfIBEEI@vger.kernel.org
X-Gm-Message-State: AOJu0Yzaj9GUTy4Ur3s3fzfCB0VE+4OIqtET0q7LSVPB+1OVHCKM+EIF
	cMh2Z7qB3kkJ/K04ynScQeOchIcEuXlfgWuiqb7ZQ8DU/IxaA06q+N/AHi8qmZ0H5Z1CRz/GJWK
	vM+acUOpOStfETAla794i9kCJMpxeClGI6As6PctW61YcZkntDmpWhIDUrkoDROsf
X-Gm-Gg: ATEYQzzD84pHFj3vA4zKTg4xdX7UxyLL+uC3t7XrvAL5jANflXlXyftIFgFugzrNFfo
	6aeFnQHmVHutI01Zen0cG9YhUHpR+xuCvfXmqpBs8/Wup/0GEVSj5M5MvdExhhbuLt7MBRkjr4i
	4ItBNrCBcfVWJHJBEmq33+GOrNXTjztR5Lr5xvAQ3YZbalCUmmJk+JebQZYbdxrK061KE83Wfgp
	SEBtqOqNxjZPuSjwCp4P+U1nDlCa/VK2koBxKk0/iuSqISaUq0bFyL1o55a+bkNNdRv3A26Of2N
	P6p/9Q7c0rLgCCVjCkPTpHgIdh9jN18/vyzOc7/wqeFGd6K0TLoGljwLdKDOyuw+u4snXWH+y89
	F8NvlPXSXPDTLdFiOya97gTmicxTZEybptAy9YHjgS1/L91iQc19ZzXyBi8i070xogt8/vJ9TFd
	I5JHHFYyudRyx1DEWHIO7OJ6qQ4PACD4z6DF4=
X-Received: by 2002:ac8:5a02:0:b0:509:19b2:b713 with SMTP id d75a77b69052e-5099805c3c1mr93562281cf.18.1773844917984;
        Wed, 18 Mar 2026 07:41:57 -0700 (PDT)
X-Received: by 2002:ac8:5a02:0:b0:509:19b2:b713 with SMTP id d75a77b69052e-5099805c3c1mr93561831cf.18.1773844917510;
        Wed, 18 Mar 2026 07:41:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a27a987d19sm464670e87.73.2026.03.18.07.41.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 07:41:56 -0700 (PDT)
Date: Wed, 18 Mar 2026 16:41:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Sam Day <me@samcday.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Petr Hodina <petr.hodina@protonmail.com>
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: sdm845-shift-axolotl: Convert
 fb to use memory-region
Message-ID: <h366xpuwwaghjbk4rv3b3uzlx3l2nhifiyavhajj3lce4eayyi@twhjgncrshwa>
References: <20260317-beryllium-fb-v2-0-36b69dfb760c@ixit.cz>
 <20260317-beryllium-fb-v2-3-36b69dfb760c@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260317-beryllium-fb-v2-3-36b69dfb760c@ixit.cz>
X-Proofpoint-GUID: LlWQMQLz5sqsyrYS9fj0Ystkg0SvsTwN
X-Authority-Analysis: v=2.4 cv=FKAWBuos c=1 sm=1 tr=0 ts=69bab9b7 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=NdoN8BoSjOhuqMYtIe4A:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDEyNSBTYWx0ZWRfX569NXMZXZdgy
 9QBBM0kKhJm7aeBKnpsxCFvyc1qjGubp3LxRiS/YcmCoZ7JGz5omUhlugmT0YDHfi5m8Sp6ll74
 ut/zpfGtm5qH0sH4WtMPLBg4jaPmas/WjlOl6TwUaG5BBTfCDh2GI0GiPo2Zifnk1Vnp8ZrPwef
 n3zlSC+UpeoZrEK7EaJ8F6PobxKXszQpc+zsnFdf1IfrbdsO6BV4QkrF6tSpzHYENhV+njBwrHH
 u0DHDgMhHdWCeQ+GeJMctfhBCACdVZL37sxhUDjt7fQvAeJEC+fMv2DGsFWwpccP3ZxNogQTXRN
 xELP8H8cX2wHyNohtPM+bJzrv2Im5j+qHWZJMSKpafaby0H6vNVQBK2NuTet/2FhtIRrvkgn3KU
 QPp7W5IBb2G5FR2n2JVfvFiOeRIG13Upiibfk2+yZlt5pR2gtDaQt8gFvfic+YcHFdkCYVWZPYD
 N3eUptn5E0IfAqRukSA==
X-Proofpoint-ORIG-GUID: LlWQMQLz5sqsyrYS9fj0Ystkg0SvsTwN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 adultscore=0 bulkscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180125
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277306-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,samcday.com,vger.kernel.org,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ixit.cz:email,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.975];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CC8892BD7F4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 11:12:33PM +0100, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Instead of manually specifying reg, reuse the memory region.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

