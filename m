Return-Path: <devicetree+bounces-264957-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBhWO2OfjWnv5QAAu9opvQ
	(envelope-from <devicetree+bounces-264957-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:37:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC9D12BE95
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:37:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 61DDA300C987
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6562D2DE1E0;
	Thu, 12 Feb 2026 09:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P/UUF9mi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eGnWeVFZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EC517B418
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770889056; cv=none; b=h2VtTIrv4YY4AzKALOGzGDftdb0UtbV+lmLT8zfrHiYOLztes0V6V8yzNsToeW5dhlHYoKNr3XcJ41vK3o7rMuL6Emdy5u3zMKzPXvud1S/zWr/hGpk45vtY6tVrsnP/eBf2EMRcCoAwNIKJYOWW4yC6xTuEhDhPDKCaLwHmlXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770889056; c=relaxed/simple;
	bh=ki4PcDve6QZIUhmtinc8MmVny6PeIIlLksXH3G43Eh8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VMWNWxWMtqXaBszgW3znuR+z3U2tVH2jonj0hMGhAv8Nu25fAZl9P1SFvMOh54lDarrUGpYQ9ALJ98oXHFTSPeUQnzXg7No1WTYpt/WTXJNmYWIPPoDrZovNLt1w0VaLiOWjhl4mLAN0g1RIJlpSRpJqRtgFxis6XBUi7+nLDQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P/UUF9mi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eGnWeVFZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C3Rkpe3143860
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:37:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ki4PcDve6QZIUhmtinc8MmVn
	y6PeIIlLksXH3G43Eh8=; b=P/UUF9mi3bO2Ck72y6Iyl4rPZMgCq8aD91iYxfan
	SAiyJ5vpjE+Q/znMzl1IgSozWIx7Y7s5SMCEA5Wr31vyYYxICUZr0198RRS9X+JL
	peK8rsgoERRT6a/4ph7rrl+s7nvxYFxyM46zFydZN8oenlSl6wDlyQmX6xrnxvN8
	qbYMEB3POYRtOii+irXxOxsJTSQQw5DzKMOLeVqOl0zAsLEggssUr8nEFTO2PqsM
	Y84YdpZu1d+sszdryJ572jcuhtQJc+PAc7K2EGKCTyEcrKhjW/J91s5zVqLdMcU4
	e2Ls8aFsw15oeQJuRsd3oqL8aTAvuGk2w/tj3/yJr8HOUg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c93snhjy0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 09:37:34 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-824b461dc9dso611288b3a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 01:37:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770889054; x=1771493854; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ki4PcDve6QZIUhmtinc8MmVny6PeIIlLksXH3G43Eh8=;
        b=eGnWeVFZFqLUR8bpz8tX/tKA7+KYlLVjqiLZEAZe09fErFYfv9xOZvbiu67VaHEkLI
         7Qxb4HS8jJzAPIMXOQ4dEuO/KeHBIHjaKZusucK/+7tsgBemnQYa35NE3iV1UfKzbRrH
         7G7B3FgtZWvZWMHTpUQ4eC5DLHlSWtzyESZ85DXaIeIQofo/N4/D8TQHkIxzHg6sX1YU
         /T9xph/2Plv9SMTzVMCFBGp5I5LIbKdWhq2y0BiP933XbvQcSUiLKwT+tv0IW45/7Xoc
         22rCUwrBlWQjGz9CnRLaObRtIiHfYARK+b0Zc+iy3XWSFp4O4yNYkXJa3OcRiZVi3qdP
         hV5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770889054; x=1771493854;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ki4PcDve6QZIUhmtinc8MmVny6PeIIlLksXH3G43Eh8=;
        b=uHvVPAfpKym4VzLRpPMyPnNGW3ZXV0VKpd/nJjLvZS9haue4WpwJpnmfJFCv9KIzxm
         jugVNLREUBICwy1n8jCb4JipJhemoHWx83pf10auzH9UYXVQO4VyYpxH8iKD35WJ/H5+
         u3V2J3Hk4G9o7ZzruBNGf7wSNqX6mMh8TN2zftpqnmWHdGKjZ/TXvJMbvxOjRuVH9C7k
         rRX1lpeMuwftvMrNUQ49dwXDRTqrMRaXf9maSiQaXJQnvytgVgeSc7XT5t1SSwIG/811
         m8g2Nv5XJcXXh2kmk6AQQl7oVS4Crrg5De3V/q6QiLveU0pm8WtzsjnjXaaN758Pvd4Y
         mnAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJ60hBMrjUc1dsd22c2tGLTY4U9N0kuXp4zv0iF/xzBaFYtkw2HX7ygwgo6bXYzkNfrEKKx4ipAUy2@vger.kernel.org
X-Gm-Message-State: AOJu0YyWljZkrMW3fkbQovb7DMXDR7uCqMJ4bttekMaWIbQdrJ+yWa9o
	qPzhSQdKNkC67bXZiVM9MbecE786a+a9T0N1cNXDou/H4EMFtXjF1R4P5D8Olk9xfmpND9cXkhw
	yyEs5NRj5cnpU1K9uMOlIF3RgZMgdBRTs7JAY+t5ZdPVZPBXYVtyKOu1DhuW54xXH
X-Gm-Gg: AZuq6aJbG/KMCl9ZkTmHCeATVekuQ2HTBQKCLnK77R6tyC6335KoaYk5f1X/VCLUUdH
	xPgxMM4yz9NI28xUwwT7VvD433BEFfYkVmRpWHkPleQ5N916Au1+5nRHJ+Ic5YNYwMCYb8/PjGC
	SR7g8R2Zbb3fkmZA3LW79/3gx/cmtzQZtlvNQizQj6dAW/wZ6jvIndTC6qYebsf7uEfgfirX07I
	ZSZJf9IZe3O1QZed1yI/h/fx3MYMOrB6wcV34Mu+2tELGfRZzSLuZJAcvKPwzIMl37fIrg/lLTi
	w4P4qQR5Nqd9y/edpQIttEOLBJh7BWTpxmdf1SGfp0zmVsiC55apV569HDc0sx1eR3wA/+KvFPQ
	kszKDmrL6dgtL1dElj67JQ25nRshL8vHY3cOGtw6VmWXOGBCQe22LDWGFHW22j5TG3S5UoX7TUz
	4YCS3kKtIJSfIKYyE69mTrKOcEha2anGxwioUNAd5H5eE36fwkSDA=
X-Received: by 2002:a05:6a00:71d0:b0:823:602:954e with SMTP id d2e1a72fcca58-824b0496766mr1736818b3a.27.1770889054075;
        Thu, 12 Feb 2026 01:37:34 -0800 (PST)
X-Received: by 2002:a05:6a00:71d0:b0:823:602:954e with SMTP id d2e1a72fcca58-824b0496766mr1736791b3a.27.1770889053639;
        Thu, 12 Feb 2026 01:37:33 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e3ba784sm5368564b3a.17.2026.02.12.01.37.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 01:37:33 -0800 (PST)
Date: Thu, 12 Feb 2026 15:07:26 +0530
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Vignesh Viswanathan <vignesh.viswanathan@oss.qualcomm.com>,
        Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>,
        George Moussalem <george.moussalem@outlook.com>
Subject: Re: [PATCH v10 3/6] remoteproc: qcom: add hexagon based WCSS secure
 PIL driver
Message-ID: <aY2fVnCrPv2sS32N@hu-varada-blr.qualcomm.com>
References: <20260113092021.1887980-1-varadarajan.narayanan@oss.qualcomm.com>
 <20260113092021.1887980-4-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113092021.1887980-4-varadarajan.narayanan@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA3MCBTYWx0ZWRfX/5nbTb3MyEDE
 wDGAs692+mZ8SUdFviuKa8pTxBWwEwoVpJjPtl8DBrT+jsXXblqVVK1QxuHZTGoqCxq1w8tUltu
 w7UAPAKzIDBRSzMR80GGsvRtdffAkP7YU9dKHT3yKmlAvSwpxU5s1sM6LSVJvlO8gsyhdVhCXnT
 UcAIHEorqIaZGfNJ6uc1dbNbUqaZdv1NVzo0Wal5V0zPckUic6XYGt0cgOEY0mIynFHL4K8iact
 6ntem71HG/TZWDMbLEiCaiqoHtQQXoCgty49X91nAGiRS99FU+f5nuA7xM+dB8axsV2wBZN01hC
 GEo3MNuzQ/fWlf/CqffSgcBKXrmv8MlOSbIURPh5yh9ausWPTc8Z+dsyfwrgnfpgE63w+YU9Cns
 T+H6AUllxXDKXswpTzYzOVAdbrvuOAz4F34O3ja9WOg6Eg6lQoP+ZAjsT3LrhLunv6ojp1YS38x
 3WKuHOc28eKWjJgZP7g==
X-Proofpoint-ORIG-GUID: b3DvB5Kz5YHiuhgpgzaeHmyC7crgDInr
X-Authority-Analysis: v=2.4 cv=dLCrWeZb c=1 sm=1 tr=0 ts=698d9f5e cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=c5BuR5TBV9o0uT81jYIA:9 a=CjuIK1q_8ugA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: b3DvB5Kz5YHiuhgpgzaeHmyC7crgDInr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 lowpriorityscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602120070
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,outlook.com];
	TAGGED_FROM(0.00)[bounces-264957-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,hu-varada-blr.qualcomm.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	SINGLE_SHORT_PART(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6CC9D12BE95
X-Rspamd-Action: no action

Bjorn,

Can you please review this.

Thanks
Varada

