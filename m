Return-Path: <devicetree+bounces-269787-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 3byiJf4FpWn9zAUAu9opvQ
	(envelope-from <devicetree+bounces-269787-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 04:37:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A641D2B50
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 04:37:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7BCF530173BD
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 03:37:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF1DB2D5932;
	Mon,  2 Mar 2026 03:37:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KwBDcgwW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AczxR5P5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BD47262F
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 03:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772422638; cv=none; b=pg/5nKBy3hYXVWqBSoBQsHVIgBm7CqM8ZYCZIksQ5pPsW5sEibKTsEcrbOgVtyT33rrpRUEoBRMczPiS9mclISKz9AAb4CO0fPLNLXiTWHYAF4FhS7nqcMcY06KAbM750qOGmJj74o8QENWOsK/cUQP3/c2RdduAdxqWJMCAqcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772422638; c=relaxed/simple;
	bh=Km0XZppyhKFAYHU7tnd3Tat2vlNPO2+dozqCa1t8EHw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cwp3ucNBC6HGeWr1wPt3oaXaURCCbcTjRGdfgdI6QXs32Le4+VZ8wea0kEmVExZtF9I2Mikbs3aGzhiR58KkRxvHQCSNgBGlXo/5XeBL37WR6C0XFV8kgZ7aiEnGmDR0axWlE9XllLGjj4At+bgUbIKP7l9SdXaobM/qyPW0Csc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KwBDcgwW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AczxR5P5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 621L7rhC536909
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 03:37:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=B4GTjokSFJILP32w/FE5dmq7
	r/adkdlDF7ttrd2vI7Y=; b=KwBDcgwWtkSrfLiezy5PG7TsRicJt8JPTRsNzXxm
	WwOPiPs5ZMXDJlXMPpSPgKumbxCtEcmracbebzsgdqRfelOKe1idx8yaL3j719ly
	uoUDuDIu9KDM3bgz1t71sveVXKziNFGoEhe20wTiYRdhPM2IR1G/yUEDjJ0VQgFo
	7rlj/Og9Xi4oshwmeK4+4IjyduY4iFHPWyyznrFyZAUnJDx9XRyChoU7CyOQFg1y
	Vl/L9oMz7xd5kjN2IImDpcGgCn0lD9bUcPddFj5m7dFTvhyLxZFRtRGbZqDvTvfJ
	k+/Kdw3lKW9ovFRaqujlXLZ00O8DR+M1PFKjOb7UAeoLxA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksfyusf2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 03:37:16 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70d16d5a9so3002215585a.3
        for <devicetree@vger.kernel.org>; Sun, 01 Mar 2026 19:37:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772422635; x=1773027435; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=B4GTjokSFJILP32w/FE5dmq7r/adkdlDF7ttrd2vI7Y=;
        b=AczxR5P57jBnuvD8Mh5zRuOglzacWPeM0qRIozKzUX1xDm6XVKlxzTjqKcys+5wv6N
         N3UBioZeP9mx61Tsx1dU3Y+bYPzarxvl1COld50DY4QTtLR3DJcyj+49czBaNVurdChm
         Qc3p+QuCRqLITQ2MoTC3Nh7XyTKSwYYnpx3lMmgBdJN6fQEV0ZAGH3PBaZtBVjG/1uNk
         0DwVP9WyCwcihO6cTj0VDRSTdwIrhOVdZih0wCpvE5cvCdzHyi33BP8lAqqtsdRfuMdM
         ArArvRwjLUyln0Alrlt3SZg1Bi6CfEUUKAHpFrYIRgr49TFiM7AWpixaZ0PneIvSsCnq
         jrNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772422635; x=1773027435;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B4GTjokSFJILP32w/FE5dmq7r/adkdlDF7ttrd2vI7Y=;
        b=BRVAIM4MHHL8zhegW1Ykow83U0jsq7+acrdTLqlC078xGqsrrCMmMVx65YBpC6oZoZ
         ppw3AdNnVSvTT4E7A1VfL0sNFh1ue4jnMmyQ4QQJRw556guU1wE2bHfMq60Tq9Oq3ziF
         m2K5Hjq1n6TZqplu18PqmCIBJnyA287I9X7T0eOlLDEF6r6AwZGXyzSIrn+fAlAItF7X
         +59raRXySMRgteFBNXXMSF/B+b5a3pk1tMwz2jShfkhlYNjVqmFsBr8FmOBHWnno4K9g
         clocNShM+dHFVf8QUzozfvU1RhaovA4gHTYDVscHh1UbYOwkOqlYAFx77WqBScF4a788
         qbig==
X-Forwarded-Encrypted: i=1; AJvYcCWNCOdBZrwYRdLmGPF0o5XHrM9H4L3n6M/6PiQuTMwQaNJN09PtsPpx2LVnf94PyNia5WQRWKlfy25h@vger.kernel.org
X-Gm-Message-State: AOJu0YxvRE2nMnE5l1te8swMBi/n2sqMmba02J1UkPiITRGfJ2xTVzva
	VQYGqmltsN+IYPs2JCGMpq8Cq7OQ1VEh/rQzjhrD9ZyYk+ed1gFUxzowaEwCJpLA793X83bGNM/
	3w4PAMYEb43I9XDHIOhyQvNPTHFwjbJxINzEwj+FK6L248Fr7Ep7yw7elOxK1iShs
X-Gm-Gg: ATEYQzyys1mKcTR5NbIuLwJBy2tNczKcCYXJL6y8j0C57UJTMFzKTs4+ciPUrRUpMUC
	TxODCv7pMkghx7sFUvLMnZuQLm/UlFcjP4/ReOtUwyiSFsFx4lyXGXpevzMAtVCJOk6BoJoSQyO
	Mm7OyprOPQqL90vHWWV8CT10mDz5ys0gsadlAL9XJiRhzmHJJLxQIvnYo5vHhSy6psdMt3fexhp
	KNsmknTzFn+rT0TYC4OGYki9avy3PPYtZXFUzklUA/+Pd94q9hdsrLVZafF4KYqf1HoSSVaVTwL
	TzvoZsu0YS20ypMD79oLZQPhD61Nl7cs6qNlEppYQDZtXBVgvKDPxPzxmj3hKeuXp2/SbgaStpl
	gNT0AqgHHbBSDCHRvUNBN/T4jEpXrtYlJzzl0TDkzEmFaE7SrhsaQlUKpAygMIJll3Pf4IJ8He/
	uRkTDH11To9iCoA+5vjk+yWGNZYa1RGrj8dCI=
X-Received: by 2002:a05:620a:d85:b0:8cb:43a3:8b6f with SMTP id af79cd13be357-8cbc8e1afe4mr1234204385a.67.1772422635314;
        Sun, 01 Mar 2026 19:37:15 -0800 (PST)
X-Received: by 2002:a05:620a:d85:b0:8cb:43a3:8b6f with SMTP id af79cd13be357-8cbc8e1afe4mr1234201885a.67.1772422634805;
        Sun, 01 Mar 2026 19:37:14 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a115bd5a7csm1350913e87.37.2026.03.01.19.37.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 19:37:14 -0800 (PST)
Date: Mon, 2 Mar 2026 05:37:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wei Deng <wei.deng@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-pm@vger.kernel.org, cheng.jiang@oss.qualcomm.com,
        shuai.zhang@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH V4] arm64: dts: qcom: qcs8300-ride: Enable Bluetooth
 support
Message-ID: <muqlhuorantvzml5xx6vrsoe4ufxlwtd2yhyxnbyaye2c5iqwt@ucitw425ghtz>
References: <20260302024658.2836798-1-wei.deng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260302024658.2836798-1-wei.deng@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDAyOSBTYWx0ZWRfX/NqVzyWKfk1x
 9S1r68YqRHe1fa2+5aJPD78pmnQF6w75bcqJhlmZvwf0BgBxYzRie7/E9665W43lRLP3MKLeIfa
 1fEcou3wz8vO6f1dStCMVn5M1C2FMR1L8SZN1FnheJMDH6Z1d+jmGg5cOAXwOZhxd9khhXSlFvB
 sYMp0F8Ea1kdk/13H7LWTdlXHvqUBEOP+WdaLxa98gN1ncrHHok2edD4JRE6R0dwp2OkKdqQVEX
 fRJrwvfPbm386rFM7LOUC5bRpTN1i9MPlE72SaDGU5CtsXtwDqi1MPMwIbdrYEw9vyW2GgC9fVS
 kjKVms4KRUBd4UlY667VSiXOkugnhgm/GvVPB/J1YqVLMgit565nOjQ5d6HdMwWyz8k7cedix0f
 7U06o187dw5AMdMloEIA2ixhmXOiU5ZpxdaLrr1TJ6Zz0g9pjCZuOzF9DdRF8Lz/DslVSyUzC3u
 f4YrCN5c8GfRmckaGzw==
X-Authority-Analysis: v=2.4 cv=avS/yCZV c=1 sm=1 tr=0 ts=69a505ec cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=dDEM-9S5bOE7Kyg1U10A:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 7hLMEF_roZAg1oQ-4Q2U7v27cPfARbMk
X-Proofpoint-ORIG-GUID: 7hLMEF_roZAg1oQ-4Q2U7v27cPfARbMk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_01,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 phishscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020029
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269787-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,holtmann.org,gmail.com,vger.kernel.org,oss.qualcomm.com];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 26A641D2B50
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 08:16:58AM +0530, Wei Deng wrote:
> Enable BT on qcs8300-ride by adding a BT device tree node.
> 
> Since the platform uses the QCA6698 Bluetooth chip. While
> the QCA6698 shares the same IP core as the WCN6855, it has
> different RF components and RAM sizes, requiring new firmware
> files. Use the firmware-name property to specify the NVM and
> rampatch firmware to load.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

