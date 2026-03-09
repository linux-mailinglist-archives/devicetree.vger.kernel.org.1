Return-Path: <devicetree+bounces-272783-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIh3FKKQrmk7GQIAu9opvQ
	(envelope-from <devicetree+bounces-272783-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:19:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 562F523608E
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:19:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D643F30072BE
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 09:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 764B83783C5;
	Mon,  9 Mar 2026 09:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KjW34IiU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T5B8PAaj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279FF378800
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 09:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773047963; cv=none; b=KL0SWAhls1zEmYdWFSdAnwhmwH1jtw78o1aLzZA47mhyIj2vmFdXpxmcqtfTF3rpcy5pyBmxGkykK9Ia9w0TCBcsxaJT5JdFN23liyfO6KzzUZw+HI8tDXABJmpwJzJzRzSogFOXRwvt3tThBONTADDHLe5AZtGOoIjDp5q5E1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773047963; c=relaxed/simple;
	bh=1wozwKDKAuBEZUHWw7kCPMS2+x/xRGq99hEYl/njey0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iSrfP2NlSVI/+1cC5V4NyBzwX3BpZNL0Vf332qqpoa2mtaxioxFL1nbSjd+OdEznuNv1XMGSDeEJzJ6WHl9rpA7/NFgdy9VapDRuowGJLTsUGg0B9Ik0HCmzs9fzG0/U6SIE6wl7Vk6R8o6BiFlxjQuQGZjDk83yzrtmofWXcO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KjW34IiU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T5B8PAaj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6298WAUe3773176
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 09:19:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zdVPn5sDvV0XBr5YcNG1wlwgtSTbhchf2xN7kOaCe7Q=; b=KjW34IiUNe0hqkJ2
	Ey/BQdJ4mHsGekukc5OFDSQ88yaY6lbGH7WGL2c669BaPUf3/c5OTupcqRk6N/yt
	BYMF7flQ3DfmEyuz6PwkZeJE1s4+QIntDKHGLLdtzgUxSHbWLgIoTE1/hKtAhcpk
	R445ITkesf0Gi1jHCVaj7CbMkqt5OhodS3Is6GxeS3jFiY89koV8OqMRAJCWUPGh
	j0wmMybx93T/MGbt4tbYSacBOvbPV8/xssp+wCzAvpX8DBBHZ59ik7diifGkijVr
	pYoY+B0IZ05/4oPfBew8AMwzbUcHrRu2J5zr+ZSaPZ/+BIohlQe7nfgj+sb75vj4
	9BXZ7g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cstsa863p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 09:19:21 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd81be6f05so711300985a.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 02:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773047960; x=1773652760; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zdVPn5sDvV0XBr5YcNG1wlwgtSTbhchf2xN7kOaCe7Q=;
        b=T5B8PAajh+RudNbKRo2P/IW9QUdtm93msZv1Rta+sctOfdy7X8nLcJi5lGPjwjURFX
         ipmLbUXOjtB6OH69nLPJusHyvDf2ioE/4W9zRbnFI9lTT8+ko2YkGD3za/uFKiAbZ+Zu
         NuNjuCbVqLQAc0Fq8yIXrR35FK36eojiRTXwX5mnZfrgg9jNWTPVW+7HHB+SEoTPWvqL
         86qdm5OUu0nhD7j6fWDKRnC6Y0QPO5wNnxmmfGHmaJWzukfu10xiMUnZRcZl8wytXHcL
         uywomw9GtHd6+g9JA9v9+ZNslt0udKMMuca9v1vUCQSZRoLn5BFbnDd9ktRmT6o57GB8
         fqkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773047960; x=1773652760;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zdVPn5sDvV0XBr5YcNG1wlwgtSTbhchf2xN7kOaCe7Q=;
        b=sFQhX6JAGqGP9loJEgLM2AJi7DyH3xWLNTXH2OEHwKy9OYHxnQIA0e1qZ5I/LL9C6v
         Tvgb73Wc7K4gahhcA7bCe26R/bspRZ5RoF1j6uGlEfYZTQscHCoqKxs+uG7AWIaNv+Kj
         xd+3xxNtTPTXSFhpJgyKZanUQTXqAmqTPhf7ZAHn3PZV+1i4m/+soOzdv2T84lRAlIGh
         m6deXuILPwZiqkNWV3nQb4KHfA2nOGF5j6pG/Y5ixxcSfFM8W1kH3N9vXbDyf7HxFolE
         FgsjSeWDt7MpwB00/MGyaswO5nLop+WNu2fWZ2Mc4L3e2gsoDlF1o0h6BRy+eUSRtsgZ
         RMKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNRCZdhSkKKA9sCSmC7TTPGqXO/KeYYOSiD788agRuGzuSlfbSbYNT5+hGRPs2hGlNnox4j8XKWjni@vger.kernel.org
X-Gm-Message-State: AOJu0YyCNnWcSmctKXLuxTqbeBT3RLvbfRAJd3DFU8yk8jgFwvmCqKU6
	v3y/pOVxR0teF3/0ANfVs9wPWCGMGXa4szsnpU8dQpNjm+vC0xQgYDuueqgj4yrNKkSkQI/Lzu9
	mkLFKrOCVl2+G1kvYcjglDgFTZoxEyvR+L1D6w4XKZEzyZJePcaFOWQy+oL62rOqu
X-Gm-Gg: ATEYQzwnW6JIt+ySvo3Xs72Gnaf+Zj3BiusGf3SAr4TLgSQL5uX3+3VLYTBRhlcFdmM
	Az4wg4OkRJ3XjYYtU/34z6GWC55o7fddHneiHdbw9yKrJ6cJ4h1L8F03Xgwx9pSlSVrpzwhEKIn
	HQzSvBVfYOyhmYugCh1DWLcff+rB3El2+IluXobfPwafsvagD0Gtplql/7dB0WqbzKb+Z91fATx
	FDjT//q9FP/2xKZZD8J6h/KbiiPud2/4AUJT07jI+DqhwltwlBlbo8ccOdxKrgHdoKHhy0Roxw0
	LiZGiriMZsvbQOfmIpxdLvcxVKBXpDXWKpfgY3gZs5lgQbZhAOu31Kxlj6gfxMjIvpJZ4djG2bx
	UkQPn1c2a6Ju4m4dh5LDgTxbSi6PCKWDCBZPPlOz5tjMjr3i1
X-Received: by 2002:a05:620a:c4d:b0:8b2:f29e:3af8 with SMTP id af79cd13be357-8cd6d4d4ddcmr1296880385a.59.1773047960566;
        Mon, 09 Mar 2026 02:19:20 -0700 (PDT)
X-Received: by 2002:a05:620a:c4d:b0:8b2:f29e:3af8 with SMTP id af79cd13be357-8cd6d4d4ddcmr1296879085a.59.1773047960151;
        Mon, 09 Mar 2026 02:19:20 -0700 (PDT)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:ba90:b1dc:5545:17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4853252cae1sm150954195e9.3.2026.03.09.02.19.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 02:19:19 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH] dt-bindings: gpio: gpio-delay: Use Alexander's email
Date: Mon,  9 Mar 2026 10:19:12 +0100
Message-ID: <177304793363.9428.6145100386120245131.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260212110905.52842-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260212110905.52842-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: LPq0qpw0uVBBaCYVchTpPg4V1Mz2cjst
X-Authority-Analysis: v=2.4 cv=I+Vohdgg c=1 sm=1 tr=0 ts=69ae9099 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=yZGuy3aSNbk93IE3wHsA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA4NiBTYWx0ZWRfX8ok/5am8J7PV
 XPbU6a8/JIwuJ/ED2O665EgP42MlIweCi2MsS4G2zT39HMH1dTc2ico0vB7opbMMoYu4SdCHXXK
 PDgkUlRkI3QyEY+p8a9iTRW891iohwHPT0eIF0LMpLd3GnhmrKUk7pERDSJ9XfB/o2TnKVieNQn
 ybz90n7zveTavb+a7FrArfRg3vwqebmfTzHJFITf4ac7DDZCb0I+bF+O7lPi8Ra3zikzYSU4NlE
 bTsATelaSwlAsEyls/GcuWYqk0vqpPjkSJak1iVuSBEmFDEDwJ5IPJPKoL7VZFPPHPPA2MNd044
 aTLW7B1LtPqZwpSqP3bp/69ofGIzgLhJUt8IujrmG1/BZ8VvBNdfQJilwUWzXkE83Mrn5pSKM7Q
 kS45BMx7riai/7K5IYZBoPX+crln4L4i9i4VkoH/FG4aREbu+6hBONS73zYRE7MsFgrgrdA2Msu
 WNBQj9R+5reG/xPP6gw==
X-Proofpoint-ORIG-GUID: LPq0qpw0uVBBaCYVchTpPg4V1Mz2cjst
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0 suspectscore=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090086
X-Rspamd-Queue-Id: 562F523608E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272783-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.951];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On Thu, 12 Feb 2026 12:09:06 +0100, Krzysztof Kozlowski wrote:
> Group/anonymous mailboxes are not accepted for bindings maintainers, so
> switch from such linux @TQ mailbox to Alexander's email.
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: gpio-delay: Use Alexander's email
      https://git.kernel.org/brgl/c/c452588f3cb6b5c2bb6448fc347465aa2174cd7a

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

