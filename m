Return-Path: <devicetree+bounces-275343-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOTGMDMptGkQiQAAu9opvQ
	(envelope-from <devicetree+bounces-275343-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:11:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D3B285AA3
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:11:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F25153071080
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 011283B7B9B;
	Fri, 13 Mar 2026 14:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RUiro/jP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c/wseKYB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FA523B7B8C
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773413341; cv=none; b=omqaLMSxuU72YVmjJsw5TfETZ5QJo7UACF6Y2JUWm7QCRVEpLd3pFCLAx9IlazzHfHejxU6BOOiKsD4DeraJyq0OIWuk26DVw1SEHPhLeMydF3aeHj8SLcfrqJeY4VzGSxo8M7aC4VatT4hQRrUKh5Hs0D8aE+86MMbcOcDBnXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773413341; c=relaxed/simple;
	bh=EPYlJS3BQ7UqK/HqfHhO0wp+Tw6kDkD2eKwfQec4nx0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aN6FggOej4ViiQ4jlF097CNDePF1t6eujbqSKUyvGTxwVceajZJI5y5MkrmO05WbPZHD74xB45k3lmifaRC7Fzm453lWvXL/GMPoRxBLO5oml9jY6vpatbbz5PWq6lbDWTLD4Pus9nRRJ/biFbSAAxBGtzZV/5FovrqHCe0BuFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RUiro/jP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c/wseKYB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D8v8vh481447
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:48:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gWgsTa11z9Ciaqt4kTyHQ0JQ
	xWE9+cmwAfbOnza701Q=; b=RUiro/jPJyUArCWyO5qcX4cNOajPDjpYrIkE19Jg
	jgAKYWKRHliM92JtKzE/I7U/o6dkASTO58QcgtSrB45HFdzU009BnMZY0L0FMjC6
	Czi22Zu3iEae1S89hThZTuhbf9YME5mXCxClZ+VdYDg/DFpgzkPDBFXH92+smaxD
	JkdNYtj3VAIEuFAS5IoRBhzKj6v/R05kRjmV5g41/Nwt8rlgSpQ6IwxEXXZXuY6Y
	zPGUo0i35BnOR8eMQlM3G+iCbrdrvytNzuovi+Dw8ftdJskgN6hBzbLORH2p9J0x
	i6Z+Dj4K3vBHEiCiZB7sb/dFAg/LWUe5i19kFtXQon8cZA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvfh7s7cg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 14:48:59 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd820c6a4fso1805392885a.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773413339; x=1774018139; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gWgsTa11z9Ciaqt4kTyHQ0JQxWE9+cmwAfbOnza701Q=;
        b=c/wseKYB/BkR+2n5YM6ZFRL/EwaP8qDcvM9Vb+Fqi9Wlc41/gCdYT5HFu3ctu97WQI
         WZIa83Z7iF4M54DOekc/6IyvYNmeQQetF/0KUgkOgPHci+D9x/wKoVrlYF+5vkp3FbDt
         D8t73YxGx07E9RgoVXPKkPE6aYlvIQLd8WoHvWl6EgsqMBsxnd8yJNxZrDbUxbN+GbIz
         GuLGCmy1v2UfnXsW2+X/AFIZ/+UPGach3AiyrHtAKqCeysgDMvvxi/lmjI/HEEnZBTyR
         msIyOpOtapGJPVmYoeop9yNE94nXbWLRu+8MxKTK0T35lsowHVP/HO3+XaY7zDP2Vl7L
         eGCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773413339; x=1774018139;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gWgsTa11z9Ciaqt4kTyHQ0JQxWE9+cmwAfbOnza701Q=;
        b=VQlKZ2+t/K6T9OW05tX9sc2Mo32w7myQzJGr0dzrX2qWm7HBPHvaCmbaC1COTVCmEW
         +raPoYUC4iCuRJsC8NzPXeyKA38dmQDY2PKuIxgbPtPZFX0Dr0F1T0xrBurt0q5za2tr
         fwOL2DRfdtC/Z6H1jL8L4rHZTbVealgD5+8KD60I0ffnt+tettBwg9ZlDq0JSkINCIQD
         9cKIQi9MEsrdH2kO6J7rNUOR6TbIESZXPOjV3crc5j1Q0YcDXQY1YH5gsTC6FK4oFldD
         acvlGszOGyQ6GK3+i1LGQDAyUHQmcK8/kJ5fhqmvXJXyvCTCTfmDagbc6wuP19edy2FZ
         iyuA==
X-Forwarded-Encrypted: i=1; AJvYcCVqxWuvW+7/gfSjp5PfsAk+cQiQZAFdi/gLfzm5ZZ3JfdwX7HBDWatqgRITkL1UEKfLae3uwKBAxhOD@vger.kernel.org
X-Gm-Message-State: AOJu0YwHB4BLM6QTvNUpf3Q9g7EpWkbe17eGmCZ4l9UBJmcLDpH07zs3
	YfF3qERFIiVnQksyxffCmEyBc/JDRsQ3XaDeXxIsxnbdMod4YYsjPojsSiT0Ce20IsMyBiOwgYD
	mwfyEzBN0PDZIT8S0M6xFw8tU94g/ZAVAg5ByejIrZD4sfAF628qPpFopkAQ7/dm5
X-Gm-Gg: ATEYQzyMpGtxkyoZfDax28V1WDC4xQ9p5+L82Yja6PBgPy5qFVf5/Ig6WKtpiOq+3mk
	E3QmcgDBawWR8uFzmF7jqIItsQhWnXuP5LpEdspxYMBAc+aQxaxJ83PD6JbjBeHb9bTyqAkx5SQ
	qlM91NRg7FVHJ0cn/os/jbRXoFAFPxKAnIbf9C1cC1Vn1WMYfh/H9FijVWlEVw9r937yvvRJidw
	F+J0e5sVkj7LXpaT9FYSDlYk9jkwsPXV33JLn5NLjvk8Et0vHRL7VPVaFXJUpW96VHM4RgHlfX4
	tZDDIRN5CM+gbZ/9LO/PGsG3ozJLPfc3N3SW24SXQcUGUJNMoe5qNXzUI/dPfGkdRtHuttVq5qP
	uLua/toFbZVTPrwii0FWDryfs4+3pFTcOThYJjQFz97ygUYP1fQXcJFm7gQP52Cnm5iRWLXB452
	3mmUyzBJqPBJ6DEPDJgyQ7a/uqEoCB26z5zZs=
X-Received: by 2002:a05:620a:414e:b0:8cd:93b7:ebf3 with SMTP id af79cd13be357-8cdb5b594bfmr497803185a.43.1773413338938;
        Fri, 13 Mar 2026 07:48:58 -0700 (PDT)
X-Received: by 2002:a05:620a:414e:b0:8cd:93b7:ebf3 with SMTP id af79cd13be357-8cdb5b594bfmr497798685a.43.1773413338504;
        Fri, 13 Mar 2026 07:48:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15602e713sm1574086e87.32.2026.03.13.07.48.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 07:48:57 -0700 (PDT)
Date: Fri, 13 Mar 2026 16:48:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
        Linus Walleij <linusw@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, Sneh Mankad <sneh.mankad@oss.qualcomm.com>
Subject: Re: [PATCH 1/5] arm64: dts: qcom: x1e80100: Remove interconnect from
 SCM device
Message-ID: <uukjr4c2uymzj2pe544hn2w5ecpmqle56mir642zieip4ixwor@3uuhplnfo5qt>
References: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
 <20260312-hamoa_pdc-v1-1-760c8593ce50@oss.qualcomm.com>
 <bnaxwhrfeer3n62xp5rka4pq4mz6y5xxwsin2vavc5zcj3ymxj@splrj22ki445>
 <198ccf60-a4b9-438b-ad92-bc4d2cc84b83@oss.qualcomm.com>
 <90b3a7df-cd02-4878-b614-1499589f0906@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <90b3a7df-cd02-4878-b614-1499589f0906@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: ks-8k2Rgt9RQv0whP2x5iiMNLmx8mFQh
X-Proofpoint-GUID: ks-8k2Rgt9RQv0whP2x5iiMNLmx8mFQh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDExNyBTYWx0ZWRfXyTqCZ7FDsW/O
 VKajrPbeMQLoJOkgVP/zVBZLH4hnLOnr/Ob8UIGV0V7u8M151vj0k66qZYk9hOzZDaD2RT3lSqe
 d0x9PrpsKqN3NlB0caHEMARVmGySpCq/ivtTBuG4duzcX+PulEXYg+litTH7PZf6kGyKgz8iZ19
 LUGYnsxUx1R6iFzqno95Jt7l/gv9ARq7m40LOzLb6KIh4m0fXsRp4uGLxUa/M9TBM6ZremnVZx4
 auir5fVmZiAhu6sNb0CCI073bGRI+gOp3iNiPNRLu/d6OdJfdB/Bf5NJBn7LST/7TRyonxtQeLl
 4adJtJl1UHHWulfJHg0CenrW1U63uRwa/uf2zXX7C4qymcZLsbEseTqMvmvD6wZD8JLHzLgq45w
 RzRXG5NNekVNZ/eeQvYx+CZu4Rubo9W6Py32Wbxc9zLHwpZl6pGsHaGogmgZeuXuIRO3+o0fWVw
 VcqZA9KxkHmKKJRklMA==
X-Authority-Analysis: v=2.4 cv=BpiQAIX5 c=1 sm=1 tr=0 ts=69b423db cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=RI__DsMP3EwwkOSYGygA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130117
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275343-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C4D3B285AA3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 12:59:46PM +0100, Konrad Dybcio wrote:
> On 3/13/26 11:12 AM, Maulik Shah (mkshah) wrote:
> > On 3/13/2026 7:41 AM, Dmitry Baryshkov wrote:
> >> On Thu, Mar 12, 2026 at 09:26:35PM +0530, Maulik Shah wrote:
> 
> > d) Add separate SCM child device (with interconnects) under SoC.
> 
> We'd then have to probe it as an aux device or something, which would
> either delay the probing of SCM, or introduce the need to ping-pong for
> PAS availability between the API provider and consumer, since some calls
> work perfectly fine without the ICC path, while others could really use
> it

qcom_scm_pas_is_available() ?

-- 
With best wishes
Dmitry

