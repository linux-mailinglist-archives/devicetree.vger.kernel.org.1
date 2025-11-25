Return-Path: <devicetree+bounces-242170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DFED4C87819
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 00:48:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 09C3234B898
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 23:48:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2959B2F25FE;
	Tue, 25 Nov 2025 23:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lAQ4+Bzs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aCev0qpp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D4F2E88B7
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 23:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764114512; cv=none; b=oEP5dBBsKMkW1QswofUHo3Jpi8TWaPXaM7ERq3bnCd0lcSdABj+HsL58/9vu3ASzYfuy5/PwHsRo7pnGKQS/K1/KbVVaW4lOicPxo6UK1a7sEbBf19Vh2J+3TKXqaQAjXZs9RlAA4xuYz6LbgZDdDF8bJ9PqvuISKUk+QWUgY9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764114512; c=relaxed/simple;
	bh=1TXfVPlixmyba6i4iq08P8vC0/duqILVROJdsnsxVr8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Nld2UkrNz8tj9dv9ZImYzVpHm9Jai9pssAJf0sVinpP7Tc8ixQvK/7LZkyCBetz/1waAKu979JGH7R7hpHFWAsi1SYAK90cb8lvv8LuU/1NX5g4gUrfI8nb9KDh5WYU5c712DepcFyDkl7ZTsJTsQOo50SUscfj709sTrkTgZHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lAQ4+Bzs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aCev0qpp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5APJ0Noe2658999
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 23:48:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LaLJMWzhhoL7jF0TkISIME95
	5ZsctfKtB90v8ZvJ6RQ=; b=lAQ4+Bzsij7HP9ZKcNk/rDsdxXaz4VYoKQSOv6i0
	pWBmUB3vRcQLDuVKc2r38Xx5gRNjTXM0Bm/B35rpW5CO7pg0FiftzD5qSrHoSowO
	pCa4kmJ/UFPB9mQxE77Z3Xa4EtGxBehwiZGvjNOsZ668MNh7wBuISgWmY8xawfB3
	pbj/jX6idcpKJWEC9ZebnDsmEj60pEzLuDgYQfhhaZLmic34EvZMwUsP2ShdxN7x
	GlQuKWzPTlu0On7kleXKv2x9RcdcozAyoghJNcQsVSj4De0feitaYxYU4DRyT4eB
	8RZU3+tX0PdY9r8/86vwY1GRNU+okmP3gZM+Z0HEsgGKhA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ana9xa5nb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 23:48:28 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2657cfcdaso730023585a.3
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 15:48:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764114507; x=1764719307; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LaLJMWzhhoL7jF0TkISIME955ZsctfKtB90v8ZvJ6RQ=;
        b=aCev0qppPsXyYXWCMCEwhocBwvPwmj6yFrql7CS5fu7CtYBk2OhON79I+53fTtRt0L
         h1K53MNBimDkRPJGNLjmBX7kIKrLLYaquXiMtPweUtV7rqvbD6XhhNOtRmGc9O4Ntm3n
         nw05wNfKLa0ueqru6wbuiTioUSXOWemQUC7Acchib3hBfkhNYLAIeNRs0Hqf/UgXBQyL
         G/Z5TwY5gBl6imCwk8TSjc3jBCeSsT9urOGJ93Nu0cHYqV/5cddjdtB4deJiu7JXgkGh
         VHj+hd6k/HFO/1QncqvhPNZ9PS4HJzNA+4Q/Af+5nlAtP2xiPuRK3B8EBQA18GVgx5x7
         wKEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764114507; x=1764719307;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LaLJMWzhhoL7jF0TkISIME955ZsctfKtB90v8ZvJ6RQ=;
        b=uXYERoaTCzWY2rbCcQM54snAAAE23piLwNCZWB6+4vLoWnLJVVhwzQZu7d+zOj/cDk
         FMGEsLB/JpuMw5sVCGN8b/M/T5/irs5ED4L/L1+/Ads5EP59DaNhiQSSshTsfoDicamU
         vR71bDbros15sMOqIaSPnrTpa72b0awtmWYJzSOGKYyrh+Ei9I4ZJO9JFH9brZQdX+8y
         hg2EC6anKdA+LpQewsin5t6lFVGJ9/g9a0d58Q9xHE2TcdwTyT/my0vV201IQFjHBTgw
         BX9WfUSH1uWnWrb9tdTiP4G4h6eUuDIqbxp+9dkKti9h7CMaSzVQMlpczYu7SJ8njQ3y
         lluA==
X-Forwarded-Encrypted: i=1; AJvYcCXArspgn9hPlnKxzgqjiE3KduMEFIsj3wYDuivIQpS/waZVSufbrhg71ZQqoBddNwwmVqPBgewacMEW@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn7IPEgSAxRXu04hrIgylVBFXTjsvMK21nrbG7pzTIaLBUuhrc
	QDjhhBz/Y7GZ3AhGOV5HtTjracGR1tuB//gYh5tMA15o93RX9ga/6Dq9oOSyOtWtalwut27pT1r
	rypU4T5L3VmrHepuRNesQXLwZ/yHY238K0GcEme+WUbCZnSizEh8AQ6u2WvHfcJc0
X-Gm-Gg: ASbGncui7r/M1yZKEqhZxwIcxsStgsp8H2TtOR3Q5LyHGta1kD+zLLeCtjyDJB+l+7g
	XNvxBAiKN+GkMLybCIAoOB3aPvcVpZTS2yYr6UwG1I8RRM4oqWsSJDFIIIy3h4rij4oxKPNxPxT
	9tCC7pmKYZneDJLN6IsVihQWwlomRD3HZEJNvNIFVYDDBOgHbO7b3bDzKGwN7xwNnLJJT5cWE9T
	4R9vO/kqXaIIr2Y8yZOJmzS9ZPeeI+sc2bDC1ouDZjFrolBeAAvbEUvuetnZgFa4TD+7fA/bCHf
	ifsld6kiP8q6VyrRj+HzWj1E8vbjwYkpaNsa/gjvVp7VgDRrIr2uaZbU29cQ4qCcTbsVwi/eKay
	rqW00eRMjf0ADCKgodOAvvtARhunUFlkMBQswtHo3mlakKaSeOnEVvLdznUssYoeJ7ZSPeZbB27
	rKTrtZ9gyaP8dm/+Z9CQ3Ye/k=
X-Received: by 2002:a05:620a:450c:b0:8b1:1585:225d with SMTP id af79cd13be357-8b4ebdbced6mr609941585a.82.1764114507469;
        Tue, 25 Nov 2025 15:48:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE6Iz6guPEwafR2wvdP6krEPpb9fwqNVDu16YYRJcFruP0aUiA6bZ6DvM6LUsWD8DjhuU93Vg==
X-Received: by 2002:a05:620a:450c:b0:8b1:1585:225d with SMTP id af79cd13be357-8b4ebdbced6mr609939185a.82.1764114506973;
        Tue, 25 Nov 2025 15:48:26 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbccd9esm5511505e87.92.2025.11.25.15.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 15:48:26 -0800 (PST)
Date: Wed, 26 Nov 2025 01:48:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Casey Connolly <casey@connolly.tech>,
        Joel Selvaraj <foss@joelselvaraj.com>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Martinz <amartinz@shiftphones.com>,
        =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Richard Acayan <mailingradian@gmail.com>,
        Alexey Minnekhanov <alexeymin@postmarketos.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH RFC 5/8] arm64: dts: qcom: sdm845-xiaomi-beryllium:
 Enable fuel gauge
Message-ID: <rtkhkh57hnmq4vb6nh6wh2no6z52tamt4tiiaplxpon3jrbl3g@pe6cm4hmvj4p>
References: <20251124-pmi8998_fuel_gauge-v1-0-dd3791f61478@ixit.cz>
 <20251124-pmi8998_fuel_gauge-v1-5-dd3791f61478@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251124-pmi8998_fuel_gauge-v1-5-dd3791f61478@ixit.cz>
X-Proofpoint-GUID: PE65ynmjehe6R3kCYnfXQjc6-VLjCJji
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDE5OCBTYWx0ZWRfX2BKFhTyLLX1a
 alP8ZxYTkqy4PWdZnw4S94TwJzWlxryNx+UROP9qmoERrLgugMV4yW0B2r1NKqnYBPfkWPRAKY2
 3LQ5UwVqbnsBZez5vuiBRoWWqVPz/M8VYt3AdrErdaP3gHOtGZaKoHrAvL60JoQbNp5/GFG8AFT
 abBnZ5jY+pZ4I2oEpEuuPoS2l+MSs39J8VPsGnc8royMQ/oZ5CpGZxw6U4OEeMrOgDVWXQHnzIq
 0EHNBo4tZBn91p18MeZP9ck43fK6reposd8UOY2B7tqQRdVYoJGgxUbxtFrQ4H+JiSzors3SeHP
 Eyd3xDbCE8FcvJNqYhOLHW+h1D3cyYWDFRm/ZfjjUWtPThTRyVlBUA1oCD1+IiKrsQZrw0D18iG
 HZ8mdv0CCfnVS4p5fXPvn0YD5mm91A==
X-Authority-Analysis: v=2.4 cv=Sfj6t/Ru c=1 sm=1 tr=0 ts=6926404c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=WFa1dZBpAAAA:8 a=EUspDBNiAAAA:8 a=B0FhMAULOlTCn5wgl4IA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=MZguhEFr_PtxzKXayD1K:22
X-Proofpoint-ORIG-GUID: PE65ynmjehe6R3kCYnfXQjc6-VLjCJji
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 malwarescore=0 suspectscore=0 clxscore=1015
 spamscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511250198

On Mon, Nov 24, 2025 at 10:53:38PM +0100, David Heidelberg via B4 Relay wrote:
> From: Joel Selvaraj <foss@joelselvaraj.com>
> 
> Enable the fuel gauge and configure the associated charger and battery.
> 
> Signed-off-by: Joel Selvaraj <foss@joelselvaraj.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

