Return-Path: <devicetree+bounces-270047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAvwHg2cpWmfEwYAu9opvQ
	(envelope-from <devicetree+bounces-270047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:17:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C91A71DA88B
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:17:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21D95304CA4E
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 14:12:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A8143F23CA;
	Mon,  2 Mar 2026 14:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z9thOwad";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WzyFPiQn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A98B383C6B
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 14:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772460775; cv=none; b=NJiSEW/wFsEKPpZ8oDuffzFBUcxpLqRJEcVqYTUgPr7TltwpAzYYc4rf438F1RLuAX6WW5nhKraps9rZi3eatI0dgED8Awg3QLhF5iQa+fmu4UGL3B9cpgVlQVIeU1n7Rlinc3n3flyv/cbvl95Buzw4bcG0oKbVEMaQsvA/Odc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772460775; c=relaxed/simple;
	bh=tkXHw/T9A4+a2nEYlgVBfLNKfaPlQIzgol6SweBQFV0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=QweCo+/mFcnA3BT8slqLKfOOv83RUi960wWwfB+9aAN21HD2AM+qJNrNdrc/A44OEoVdkYVwix/4WMEjwfFwrbFisZr90Ie+p8Qo2bRS8UabuzkWwAYHAS6c8BZ+St7WaU5oXx+1NR267YRbXTO6dmyaqXuKsTvH/OQmVqnWmps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z9thOwad; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WzyFPiQn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 622C4wWL2504593
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 14:12:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TONc3pqyOTNHCuS9zVMSY7iiruSyRVqmQKnbEj4Cu4I=; b=Z9thOwadEWaUhnI4
	6oI35xSKYG0a3kZZ4NrzEh9SW+gVOAf/BXzZSW9Sjhzq8Vy76bJ+/BFs25hXsdPq
	oElduDfn4/LaljSQxa0KZQKVbs8Zb2g8itkohDuX8sTQ5mGS6fbpw+n0xe5qb+Kg
	i4X9ymdt8X5ak2PO2U1Qa+L8bMnBfGOl0ldUhpfN3Mv/gzgAdGdyoPVDFekFr8Ie
	6R9jP6XIx+kDNf53Y0FM4cPcDdb0x2TTiHnqPiAw8yK0lWleQxKxiuQG/zjQ+7cy
	EaUcv8N7XIzcr//9XBJY6b4wWRRaUV992YTaUruO/54fYhh+a4NhmLXpDOfJYUCD
	N7xocg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn5hesjba-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 14:12:53 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b6ce1b57b9cso3640032a12.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 06:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772460773; x=1773065573; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TONc3pqyOTNHCuS9zVMSY7iiruSyRVqmQKnbEj4Cu4I=;
        b=WzyFPiQn7dBgnoUC84mV6TBNfHG43NGDG4EugZZnQu8IjYPNp6Lq0R3iywKz14xaib
         D7dks7yUGwjt0jcQDkzGmyzS8FbzEq4z1rRPiSgjh4JlGq7+xGSB/JX7cFlotj0CmuYO
         EhcUiPcjEyesOUt2DTTcd3t5efo84MqImVLuglzJaG2HHE+Yjtgr0Tj9zMNJKLk8PG1M
         qvTStWBm8e6RSqxiIUNptFoHRRbHNwJgrGouQzd50194y6RFEigGsdM4oojZAugbhmqi
         NwRmpdR1tNZbet2OgpBgRnBhwUNvZEGxOLAGm3f8anz0Z+bMk9Q8dIAsQgtMS+sb8nAm
         9Hxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772460773; x=1773065573;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TONc3pqyOTNHCuS9zVMSY7iiruSyRVqmQKnbEj4Cu4I=;
        b=EKdV6DGgS0eOb8K6x2nWw64G9UnSHOk8EvPnJagAp7bmrgMHsCmcr0vP4NYFj5tmJ2
         pht+2OUFjHvSoMRZbtutWusDuH+GVZyaGk1WxZvEgUFQ1emRahg6dSpfK/TnLHmb9bie
         BnTgJPXk2z4smzIM/sQXZ6gdNIs/uILltnjTF2zh2YYGBJ08AMzlZ7z2rFW1FpfxEXnD
         cE+alCzFzwtDxlm3xz8+xaj8SdSaDZPlVAFPPA9ppzp1vkcm8Mo0lQ7WlFAZsGnisHVb
         AtFG57hobhJWT7mAeeMdpNMBgluH784OO46Pugr6U54FJKnfPHrDiyxQNH2NjTmiBVP0
         65sg==
X-Forwarded-Encrypted: i=1; AJvYcCVYjKI6x5Sb6y2SPpeSfA8GpL6ajJuJoQHG7MMwLEOZQUWF+FT5x3BlIksytO4wwoFEtF9r4CnVGeaA@vger.kernel.org
X-Gm-Message-State: AOJu0YxWrJBGEyK9nipUyoHXbyOn/kz+0q0cZ4D6MwbNmi0zfbfhsEII
	cOD8mE650dEFX4Brb1iVYNsFLG3ECendzZ5km7kc3MN+D3Vtf00PnJWJSfovDHGeRpJSmZk8p4k
	Y/UchfL+HrYWXEDK37hLW2wK+5SkumPfHlPaSsd7WUAWBX7JTIANWBZ28BDUjK4ab
X-Gm-Gg: ATEYQzwepS2lGsRd5hJQhcoU/CrVsVHhd0RfUhbX3oyPHgbbv1UVsvdZlM3wEdEZw9A
	KbcxIyBIAIV9KmNDffj6f7E/WpAKLWNpZ1FjTjlEKIs+fPEfvfubm7JTwKqxreLyU/gmzYpRupU
	1KQQZa7spCorlyiH3Q9+zPEvMBpVaC+wQT8weVs1108IRQNXg/scbSuWtxbZeNA9bBtSpPuAZ86
	cBA8Bk6VuoXo9om9claQN7E5SlzUrRsuCTiqTDYl78PzPzctCsCAhjbtAmxUTTGvJTXXn7zvw+i
	LTB/3h5MQyp5hVfXVN7/g6TarF7UJmTG6HdgtUYBC/PLiUvzBVbIB90uWRFUjvl3hLzj1/oW5UD
	VQ+7qSLGDt/KRvPusrBZjjbA=
X-Received: by 2002:a05:6a20:a103:b0:38d:fa67:e87f with SMTP id adf61e73a8af0-395c39de580mr12110965637.12.1772460772897;
        Mon, 02 Mar 2026 06:12:52 -0800 (PST)
X-Received: by 2002:a05:6a20:a103:b0:38d:fa67:e87f with SMTP id adf61e73a8af0-395c39de580mr12110932637.12.1772460772353;
        Mon, 02 Mar 2026 06:12:52 -0800 (PST)
Received: from [192.168.1.2] ([2401:4900:88da:227d:c631:5c3c:695f:8a61])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5c9f79sm154372085ad.33.2026.03.02.06.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 06:12:52 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
In-Reply-To: <20260220142600.2397070-1-andriy.shevchenko@linux.intel.com>
References: <20260220142600.2397070-1-andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v2 1/1] PCI: dwc: Remove not-going-to-be-supported code
 for Baikal SoC
Message-Id: <177246076798.21083.15234625230035154971.b4-ty@kernel.org>
Date: Mon, 02 Mar 2026 19:42:47 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=BI++bVQG c=1 sm=1 tr=0 ts=69a59ae5 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=VwQbUJbxAAAA:8
 a=I6R945aIQUyn53Zyx8AA:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: sz-YmcJPwSQl2srM76vEQMJqPPCSvRCz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDExOSBTYWx0ZWRfX0fEOXIv4bFkQ
 6VPcB/mrzPEEsSbe6Efkea/w/zzwtmvkwg7MJn/hXrqxQKO3XDY4FWCiMeVKuYqOXDHtYGRsNYV
 dbFeZp11naRh9aA/vhNwlLFxzOIBV9UTBmfjb5/zmg8Bx9Wj1A5D8SMQhE3d1YlL4X4zLSGG2mO
 /eXaGEu2iDO8Ilyz8+7kQXY1l7sv9frOcMVifGyc91/cGrhcp5F2us79glaZGz76rXAvgrOTTUY
 iMnbzUAq4F17Tlxj7GA95N2gMNQm3e2Yz6ZQnQyKZYRt6zhzxOlDWaweOrnHd8QMSsuQT2UPmOX
 Tn8qkhh+yTj4lGt3P21fbqOUiCv/X8+XUgENnKuCeTNjt9R+XKjCtB0R6/Yv3JMv8KEyZHUS3gv
 Ja4j1NpkLVdztuDYO/lfHDU23iL/rg57lG2QNW4HVLMJhcQ5aDqPZign5gEX/CXpSsQgZ4NEipx
 fprbUjlgC2JxyO5OFMQ==
X-Proofpoint-ORIG-GUID: sz-YmcJPwSQl2srM76vEQMJqPPCSvRCz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-03-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 phishscore=0
 spamscore=0 adultscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020119
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270047-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manivannan.sadhasivam@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C91A71DA88B
X-Rspamd-Action: no action


On Fri, 20 Feb 2026 15:21:12 +0100, Andy Shevchenko wrote:
> As noticed in the discussion [1] the Baikal SoC and platforms
> are not going to be finalized, hence remove stale code.
> 
> 

Applied, thanks!

[1/1] PCI: dwc: Remove not-going-to-be-supported code for Baikal SoC
      commit: 5e5ea39ff55297fc9d6338f26346c2a7738a78ea

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


