Return-Path: <devicetree+bounces-253179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 647F3D0830B
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 10:29:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6BD57307EA12
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 09:26:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B16C93590D8;
	Fri,  9 Jan 2026 09:26:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EpsAyHRm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IWQfTt9t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F3E34E779
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 09:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767950788; cv=none; b=CvbJly6y+GwezjBJYI5i422IEiTD9jj6rn1yY2sQ8qHb1NRI1jj345FoHVImbRvwvH7a4wWiK7PDmO1WpKV+BW8qqfPT+oYyS9y8JyciyN+liEyy72bJkca1zW/FXBs5yDzlBlPL2LIrQsaX33ap8rdpmkSKPg6IroiawbpdL2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767950788; c=relaxed/simple;
	bh=n/TG8MO6HyiL8J/XwIVaNqLz0iR+l4eo3PBvnTrhxes=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ib0iE774i4iWEnkEh34YHgaYHY5sVIbD2OWFE4FEPvNS3A/XORf/MINwYCFosO8x0NXfT1n8YBbDyFbRREetHBsemJCaJJjIySo7XqS10vo41mXHsF4TPN8jBC5DF/7ec7qDjEoXhw2pxOrAthb643OoDnzUmyZJujUhEIFMFiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EpsAyHRm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IWQfTt9t; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6098nZst3220044
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 09:26:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GYupHi9hiffcOrLcYrkERu+8
	TOtiFQWC8OIKZvLgLzU=; b=EpsAyHRml+EeiIqmsgWAs1OxeWytrrAwHkyIGuzN
	U+Zof37ZEcsxtVOWMxe9ZKs8K7IJ3PrM2u9EB/7DvB+xLXzf0C899TV4+w6nSlc1
	Iq5ApL4+rMhIfxaaKPA1mkhNtcRWIK2HoZiIBx+DJ1P5316AZ2UH7TumeNXjcSP5
	LSDyknWvrkNmjR+QP+BGekArlurHYAYOnT8lJi5H3opn1BMhPU4Q6zHrFdLxLtZG
	xCyVOIopHdgP740bHRyYtm5/yFHZwXup46cDy2OWshKhmc/KGBbBfoKZ0l+DBX1z
	/4Lo/KkUOCYboSPcpXmFRM8kOMkHOvYxgvcbA3vUUC28KQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjjt0hych-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 09:26:25 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8bbe16e0a34so862517485a.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 01:26:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767950785; x=1768555585; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GYupHi9hiffcOrLcYrkERu+8TOtiFQWC8OIKZvLgLzU=;
        b=IWQfTt9thRjXPzU1wuxnzTKhoBOpga1zlOFQ7BOSYhav6n9Y5OVu1OR3O6VI6WAekj
         Hlkiu7dWgrpIHF6fygrw9Ch4Dl5pLtR75G9IH+0baowb7fY6wp05fQKANf5ubuiNk2MR
         sy22V1TJ9X2BP7Q+64SGnFtepVAs0Cpv1q51Z2mgizKq52HRctNdiM51W/3GyjQZaPWI
         Dk3xe0vFSvv785h27ZrzUJHtnDMd4J0sHUWxba4+pWdD4G2rv/rCUoMWFQtWQwK+vAZg
         spExXdyjWWqT028IrHrx3BGk89DZVjJx4r2BP1oh/+LR5wSoLQGzgH94L3zflvuvt5PF
         3s4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767950785; x=1768555585;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GYupHi9hiffcOrLcYrkERu+8TOtiFQWC8OIKZvLgLzU=;
        b=l7M3W7/6dAy0p4qwlv1jB539bVDcF5QEhUv1lsG/hWQqg6IOAF6NAoycXZ399ZWwkT
         iHR8QSmfRiYx6gbhuOGLE3Ajkc4CQ2Ctb/4v+nECAkF73bU+vVtDNj4CYm/mQhAcmhLX
         Z82Pg8wtny1cCpdEoG01IaU5Eu4ws2zZGKMgIj0HGWrX9rHW9DGnfrMA+f0ynia6+gc6
         jwSjwDnuxJTDtg4UbL/zXyavtJuZf0kjUSauT/b95qV4EIaiEMh4m51DnOOa+T/MB/7m
         WMuhPnkJapEUNC+XKSrk8oV9w3+LVjNv4TUJPORDq0FvHTTgKMpbnftO+nvsHm3GgcAg
         xv5g==
X-Forwarded-Encrypted: i=1; AJvYcCXSXrtvz2qFZ0xMXZ9jAE40kiFB6AFxIZG33jW75TGlbVCNLSVC7TO4YtVBlRePlCDNm1dtEX7l7AZ/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2AhA+b7Du+NKhbte1kBRIIGF9iv9zrbBlQKsc9D7O7Xi+xKpm
	c5imO49EuRTakKj5OiEWi9y3lOIGm9K6kbI5+o1pp+jD0JT4V88T6yRxjEUlXk8x+67v0F1vS3s
	BmuahXemL0oaJHRsn9bKS3SV2pOgPk7iqlJoSRDnMkNubsE7TjSbTW2/AyEzoZU2N
X-Gm-Gg: AY/fxX5SRcF1jVRj3Uh7D/sX3ca1B1cUOlxX8hngEEqPfcbUTO/IbaS9F2KLgcmNW2y
	mTaR21irwBY0J91Hy75+pMQOG1zwef6dCM4jeAPjn7soGgXMR2zF/EzeD1O5tMEsPMnuy98LS4x
	cFYwZOCz9ozx5qDMfNmy8Pdel74WcxOE+i9J4YumNWyGHG47O62uSklkXyOg7nMagAC+kbFykz7
	9jpj7NGgfDQ5fTazZ4BxSKGd0PLxQ20EgriX4YXZXTcMJlW+rnNW02n7tUpvqYJflt52p3iETXn
	uu1oEA2Pp0G9Dg94EJ/c01ZDWcJNLdhaoT2ki1psKel0GKgB1HKja5uEKCzGf35luEYFAkZncfz
	APMruH21y3cwTATCN13Nl
X-Received: by 2002:a05:620a:28cd:b0:8b2:ea3f:2fa4 with SMTP id af79cd13be357-8c37f4c2b5bmr1694839185a.6.1767950785218;
        Fri, 09 Jan 2026 01:26:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGqk8xaUlwvb+pLU9tqMNDnyTuej2+CgVW+rsndOdKz4BuiVC9qsdOjh+vh+cFbcIpNWeJ2+A==
X-Received: by 2002:a05:620a:28cd:b0:8b2:ea3f:2fa4 with SMTP id af79cd13be357-8c37f4c2b5bmr1694837185a.6.1767950784625;
        Fri, 09 Jan 2026 01:26:24 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.10])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8719e695sm56927835e9.17.2026.01.09.01.26.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 01:26:23 -0800 (PST)
Date: Fri, 9 Jan 2026 11:26:21 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 4/6] phy: qcom-qmp-ufs: Add Milos support
Message-ID: <5g7g2l4x4ocpw3hx3pkgdwrboicxnih37zxvvbfdrp5hw7jwai@3ybokrxepo5t>
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-4-6982ab20d0ac@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260107-milos-ufs-v1-4-6982ab20d0ac@fairphone.com>
X-Proofpoint-GUID: V91ZKA-ga35AeJLUP7B6vTr2rR9NygES
X-Authority-Analysis: v=2.4 cv=VJzQXtPX c=1 sm=1 tr=0 ts=6960c9c1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=hZ5Vz02otkLiOpJ15TJmsQ==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=e_63XvbMukAsnnsCD6UA:9 a=CjuIK1q_8ugA:10 a=AYr37p2UDEkA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: V91ZKA-ga35AeJLUP7B6vTr2rR9NygES
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA2NSBTYWx0ZWRfX7rI2pyaOgTNr
 z3RjHpZZl1vrmY26KYMm2nrrILevgEJ8XUmxupVgjAm29sH86Kqh33jF8yKsB6Xtq1h6P4AF9Hv
 fRpgGPjqCX28fMLrPH/dnq4Kra9kygxx6JFREamRczkNAOKkuXfMZucG3SE05TLyq20MMBRwRil
 v+rizHO2Z6UwuwoIh32WgEY87gDMbeOh9rJJzD6BOZ2LyXbqpwYDEIa5NpZGOIEzr8Ci7+Rb8gq
 LjyvzvgTCbPaMvG9KkVKnsZFs3GlMzkbUxXTgL9Yj6QDgag4M1i4FxRVBi6Seq8cnV9rcb7wnIY
 FLsE0ZjPD2obi2rFVIakAM/3ivRXIJUyBvXBCC5AMIkP0/BxnWINdnePfBM6lc7uUVLDoA5PLNU
 gjR6fdBdp+zgOr7687bEaZlINS+9qXT4naBlaErMsmlwcI94FwMcu7OfHn5phlHxUNgTumw8uGS
 7MZHxRfJYdwCS2OlTPA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_02,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 bulkscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090065

On 26-01-07 09:05:54, Luca Weiss wrote:
> Add the init sequence tables and config for the UFS QMP phy found in the
> Milos SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

