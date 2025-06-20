Return-Path: <devicetree+bounces-188021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CCDAE244C
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 23:44:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 551101C21757
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 21:45:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EF4C239E84;
	Fri, 20 Jun 2025 21:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Oj/OnBdd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1F523958D
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 21:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750455882; cv=none; b=WV5gJlE6oZtoEhjmBGMI6LhmXHuYe6KsKxT6s2vjZKeGMHAWQxIPbFryIelyShXw2zr3+cXJOxiGvyfSOaxIAimKtmA+VGPFRrcF2Jq6Iaxf9xLwg63QIJ2qHCUc23BHcPPiaAtotVo5GnPRBngNF7OO5OkKgz/nFTLOqDW6LNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750455882; c=relaxed/simple;
	bh=YzcmdcxDrTekUG/seNJPMliDEDlcxMooWnagOOkCocw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AKyDk/V9WfqgoqWSx4azsYCiNbF7TQK8dSpPO5bkvP/tiCp94kPcUiu5ztyzhXyI54JbQYNhx7vSjJQTdW7ONumld0wUf8Zu2mQFjAFRj6E1yvWmjcsehunVb3/pSFM/cSaOrVj3RPxPZa9ZS1KhWh2sLGDxoDT+iMUKj9+kDpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Oj/OnBdd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55KA3Tk2017182
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 21:44:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ctwi2DOqfjI225KB6TOH6mB5
	C8TUDi02E4qF9W2x+qs=; b=Oj/OnBddlpiCI0Z5jn8m/1LaNtcIfXnwUDKZVarA
	8fhvrVFSdvAFaiBYnsfpznrEZZNwD69Gy9fEP5ssJSYSRNzgwNcZKD2Gzae37R/e
	WyKbY1QrBWF/QT+jOwEaUvnOOsWAM9OEMCFXNbGXLOyKCecPrT73RONWFtQrB5Li
	HF1YbVyEc1zwwKhzsbUGqGj0n6fl8QyjGOlSXIxslW3swm17MoV/sn2PjKS1RCVX
	PyFWWqDhpcmu7taBPB9NZLg5QUMH52GvcTasH7sHgFOIpch4Wvi+ecwU52MlqPhS
	AF3hBkoA6Ol08L+ySrLGnBMH6cK66CpAt2K1aNPvl4eCSA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4792cacshj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 21:44:40 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7ceb5b5140eso340545585a.2
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 14:44:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750455878; x=1751060678;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ctwi2DOqfjI225KB6TOH6mB5C8TUDi02E4qF9W2x+qs=;
        b=c1AH9tkTXzfKOPxEMsvRCiJdU7woZ85/VLmdO+gdIzuix+lnh0v1MjGOLXUAdCJyj3
         S6r0uo2Aju6v1PX74s8OAEt7pIo8p9xO3i3fUog65eUQ12WKUDfJna5w2v5JZgFDXGSi
         x043kL7oV4raD+C/+R6L1TyRQeq3y18td1zQ2UINbtp+K/1UXbeBbEEAURyn51d+QgjW
         6D/87D55GdKd831hLvcDumMnUSrbIyldd3/hpsKLRWHxPqTfm/7cgT1bKvoCZTimXjf0
         E0tkOIKiNVVYatTCp8DJQr5qeEL1zF/+mOr4kBJgHIsoq3WQjvePT9GYsmKrEHstDswB
         ADbg==
X-Forwarded-Encrypted: i=1; AJvYcCWLwfenNtSoNuecaVZQ27/7S3aDY7zWnOI5P9LUA/Tnvms6AjuPgqv3gMvL7lugsc3bcxNz9KJciPLF@vger.kernel.org
X-Gm-Message-State: AOJu0YwZ3OCT9+l0KAEaOo/VIwBEAx6nUg8PACO+rfmmly6gcJbsY4ZW
	2RBzImCJitH2SccJVC8qVGnhMLzOK3PqY6s0EKE0wqJVyYENiY6Dt4+qBb0rboWc3QXotPJBnB7
	zPLaYd/EuDsWcXqmRfDYv6NsXmOtTkwxPxdhEyiHGIx6UhJa3omLEcPcrD55VBf+f
X-Gm-Gg: ASbGncuQJqgeNaTfeKKDRUWqll8FlTmPkflEPVBnd7KFgZBm+fF7ertEGdlkScbBJJP
	MTkCxQm1FDVDhF4r1QHjapzVOURb4niTJLKev6KSIrD4ZHVeNXJ3v8+iwY3q5tAgc3nB8tTpDHG
	+Ato5933Ymt/PUJM20YPX9JW33iarVxpJaGRIizstUXhDDKPjIefVKcVDGCWGC9aslA1t93CbvZ
	a+CJ2HP3uuvnVHCvT/C70x28Mk1tY9ga2nxicwtTliDvjAUPBxGIxaUGaTPD5RuKrCashy98068
	C2U05IenNRwrgGwH3TKI+oo7iOrjayrjRDo66KPsMnfMg0RPkMceEjtsHIOMsnGJCQcfkm6i9DU
	eNtq7wX/ubXhAJXtjqM0MRtahA14tCNdAydA=
X-Received: by 2002:a05:620a:25d4:b0:7d2:11a:5d07 with SMTP id af79cd13be357-7d3f994c66fmr697119185a.51.1750455878658;
        Fri, 20 Jun 2025 14:44:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZvdnmqP63O5PRRl19Y/9Q76MA6K05Mv4i76MtyquHA2RkydgG8Ih53vLnCssRj5N3PUcNOQ==
X-Received: by 2002:a05:620a:25d4:b0:7d2:11a:5d07 with SMTP id af79cd13be357-7d3f994c66fmr697116285a.51.1750455878264;
        Fri, 20 Jun 2025 14:44:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b980a3631sm4223561fa.67.2025.06.20.14.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jun 2025 14:44:37 -0700 (PDT)
Date: Sat, 21 Jun 2025 00:44:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Casey Connolly <casey.connolly@linaro.org>
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Kees Cook <kees@kernel.org>,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        linux-hardening@vger.kernel.org
Subject: Re: [PATCH 03/11] power: supply: qcom_pmi8998_charger: fix wakeirq
Message-ID: <e523itylvfmikypnic7exgrnrtr6ocjmlvtozmgbhqos4lpcdm@rfsqiezqb5p3>
References: <20250619-smb2-smb5-support-v1-0-ac5dec51b6e1@linaro.org>
 <20250619-smb2-smb5-support-v1-3-ac5dec51b6e1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250619-smb2-smb5-support-v1-3-ac5dec51b6e1@linaro.org>
X-Proofpoint-GUID: -NCfpTxS-yuXmxjWbpJ9Lp1lazYyq_10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDE1MCBTYWx0ZWRfXzdzrTwEKPZHi
 5JmhtkhXwAQDg9URvkmmBf3D7FXQjB8CwuTIO9pGvKDlAXNjRxRfc/OerzX/72wIgCRu6zYuXGl
 fHG1hqgenD2NuSzEFn0WGyBIa7vOMmlf4dm0ePuGj49mBUav44e7zvutSFl2dhOCGdnYnuyp2Bg
 4AsNyb5oz0J0YuURl+5LsNRDM+mlFW3nvevSglqrpRrjZVxi16fxICUrFb5NhyftzVtxCHzLMHi
 3koSQYkm3uy1E+IngK7TzcLTm1FP+a7qhi8ONDGJqlT8iT6RJTC9nieZR77DjYv11s+R6K/8k5+
 tFs39W2hg1GE1PW+fLNougsWi6s8iRtrhAnI4XbSdi3kl3tmeNFjW0bC9CB+PbKeM6Mpo0/28H0
 tgs6cqVqyKgHRgkYJs7Leftk+Ot16wL5jZxBj6A2/9S6AGAyR5SAzyt+ZT8DmxpRD5IsVoDs
X-Proofpoint-ORIG-GUID: -NCfpTxS-yuXmxjWbpJ9Lp1lazYyq_10
X-Authority-Analysis: v=2.4 cv=etffzppX c=1 sm=1 tr=0 ts=6855d648 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=QHKHbuR_x138-IVXrqQA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_08,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 phishscore=0 mlxlogscore=822
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506200150

On Thu, Jun 19, 2025 at 04:55:11PM +0200, Casey Connolly wrote:
> Unloading and reloading the driver (e.g. when built as a module)
> currently leads to errors trying to enable wake IRQ since it's already
> enabled.
> 
> Use devm to manage this for us so it correctly gets disabled when
> removing the driver.
> 
> Additionally, call device_init_wakeup() so that charger attach/remove
> will trigger a wakeup by default.
> 
> Fixes: 8648aeb5d7b7 ("power: supply: add Qualcomm PMI8998 SMB2 Charger driver")
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> ---
>  drivers/power/supply/qcom_pmi8998_charger.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

