Return-Path: <devicetree+bounces-275975-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPOGDd2wt2l3UQEAu9opvQ
	(envelope-from <devicetree+bounces-275975-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:27:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2E1295968
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 08:27:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 197D83004CAC
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:27:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6982134EF12;
	Mon, 16 Mar 2026 07:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JlV0p3nL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O2tQ6LVG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6DA34EF00
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:27:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773646039; cv=none; b=l6wxasHlwhLXvAgiB2iT1P6Zqc9CWL9afJQLqtBSKTp3qaW1DvM7Uz7+vIkPKGinVUk7WTftqxKVMxUl2JpVng83o87MW8Jl2ZPo+39yDWrqtnC3zEwJEoRtn6Bs6kdTwsAIgIpCRCgoaYUYxcFCTtYRaQAkpadMMH+yK3buUqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773646039; c=relaxed/simple;
	bh=idhP3raNCBc9CYcTy8C7XdEy8xQz3oMFvJUQt6kJp9Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Thl4mMcwyLbt/Eh49hHzwUSFkf5dWv6DnVnKXPCWH1X9KAbiaNATWHKIURYRuQdTLROA+bLkx0xUqS9n1/nJIwdLnP2ch+tk+i8p5oh4QaqkOtMqm5FT/3S3jTIFdpyjMrxl98krO+w3CkEYZ/7kgllEaboIqw6HGA6s0FyablQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JlV0p3nL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O2tQ6LVG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64bMx4002704
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:27:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OK1uBq1HcvaDU6l8IK1ArJBmNEb/gYGGSynId4hWAm4=; b=JlV0p3nLaJb6ZV3W
	L+WI9NGSyz0XgCZJl9CYFvtLJHBYQP4jdieJFB7ehexKdSyYlZ4iadN+rtXTOrxp
	iFoNOIucy0yhjE3uI6B7EDYgcV+W0J2tXZrCn213m71D3WBJv4uStjT1giCY021g
	Tm8Upjs+VLrWtGkYXrJRfpulNbTXRTrxmKcVnXgsmawsINWU8r6DmQ6nCVCixqgZ
	Qqqhg0aIXWi7lekGFt23MiM8cSQOTLPgceRSfl/enL8FLFZNvRRbxlVhSp6QMSfT
	FNbRqu8yp5bqtl9w3u0SyrA0iYOCE694iGHTlEzKrYs9ccJJyV4+NSTk2s+XWPOO
	x/Ue8A==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw0424rb1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:27:17 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2b051befbb8so13099165ad.2
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 00:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773646036; x=1774250836; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OK1uBq1HcvaDU6l8IK1ArJBmNEb/gYGGSynId4hWAm4=;
        b=O2tQ6LVGgE08wJ6Gyfjh5M3xxcPL52Ki3TNxzYNr5oG0+x3XY5dq6VL7NEjZ5S1hKi
         HzEwOq80WO7ZSTY2vdNyTJ84a8ozqnXQf1vxG+EyQqvk8dvpsma4g0UMBFSV/sCYDZz/
         CazyyG+V/occYsbTy1ygIX6Tibc1N8ouqPWbYG/hABFkagGgA0937kW3YdSTEdQzBeiP
         tuPh3YEkvv6K+SoZV7VcwCm9VccaDwE18H5cAj3g9ZUX40nY72bZ015yFoOPuwzSOIit
         gTiz7FELgi9FNha/8AkNWkOTsQL6etoIg1NYZbS3b6nTYBcYCsDYlyWcMy6Mjlpspt2j
         WJrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773646036; x=1774250836;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OK1uBq1HcvaDU6l8IK1ArJBmNEb/gYGGSynId4hWAm4=;
        b=oxCiwQ6CiO/g/k3PGzsv4f9Uivk4HmSy61manhD6gmzZwjBS1MO4jia8y7IGlcdlXY
         hALA3wenO4ZBMD9CL4yZbwPKn1ZQqM1VAG/2ZlkcEqi9H4Cc+rcjkc4n9rdDnqr0LLIx
         cOwCLXKy1DJM4O3tDMiRrUPc/rFR7e370Hs+QjH8vY5Zh7Kgv9EtU9mx4tEcfWf1ybwB
         Tk6ezm8mdgXqftN87xzewqfz6c0ckxHQW+RnvcPn7O1Twi3CSL4LiCLcaxoUyDhWnxRf
         9lnTlwIYZRd8cVzIqmeaHUWNQ5bdIsnuPO1nN95BBvZh4xfKb0QnvRbOtk+HXoj79d0s
         kXOg==
X-Forwarded-Encrypted: i=1; AJvYcCX3j2fGPdFx2mfr+TKRQe3jA47fsdtvBVlmui3kwj+Tq+vxQtm3bGrwf6hdJvIKPVp7HU1WzJWMZPJy@vger.kernel.org
X-Gm-Message-State: AOJu0YwQmreJMI5EJlsow5CN/xlCpE6a3z8ROrV70TgA7GrReXsfuQpK
	EkfXfmy7uqLaY3i63usLT/vJAStADOC3qNUXjSEGIRibdj0nkb6NmxYhma1lhn+WcF3Lb2P+4w4
	eT8a/xT9XYBl6UP+12AHbqQF4/AC+PmDKSAmF24ijLrivkL8UCCCNSOmlAc02sp/G
X-Gm-Gg: ATEYQzyLph6GcduPRRZbVRx0AjWHvxkf8w5gYGanHpadY+hefdtIw0f2mwZhkDXpmei
	f0bIAkbjy9V6BNtvPuQsnIM37sm91sNTI5n4PV//vZRnfg0S90tsA0tEd8o49ElO/ALr3VwPYWI
	35dhpCeuU9gK19qIasGr4gGAZcgMCH43KdtDmU+GmtVv/HUYRJ/6cC3Nq5Io4P6jtcACaQ4yQSP
	lzfZ2MS3w1eyVX6XCymKvknWBzUrCLNcjV00Bpx2wcHwBmPOmlNvxfXXv1YgBZighx0Xakv2tcC
	U5a8xoqh8XMq6cVZetuNFI157tQdJ6yqy+AS21hOIK3XzZTWqEKX59QYqbg0K3cOHGVxYD9ZVNi
	SN2ArV8QS7why02D7gON3UuCV7La8xHYSnv6ZP1R58H7WpO4TyJ2fW5iAzUq2mRBgJA==
X-Received: by 2002:a17:903:94d:b0:2ae:63a4:3baf with SMTP id d9443c01a7336-2aecaae66d3mr113855645ad.46.1773646036221;
        Mon, 16 Mar 2026 00:27:16 -0700 (PDT)
X-Received: by 2002:a17:903:94d:b0:2ae:63a4:3baf with SMTP id d9443c01a7336-2aecaae66d3mr113855375ad.46.1773646035745;
        Mon, 16 Mar 2026 00:27:15 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece7ee9f2sm99694215ad.56.2026.03.16.00.27.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 00:27:15 -0700 (PDT)
Message-ID: <9b49adde-3414-4e2b-81b7-ecf54faf40b6@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 12:57:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] Add minimal boot support for Qualcomm IPQ5210
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linusw@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-mmc@vger.kernel.org
References: <20260311-ipq5210_boot_to_shell-v1-0-fe857d68d698@oss.qualcomm.com>
 <20260313-serious-calm-chamois-4a0af3@quoll>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20260313-serious-calm-chamois-4a0af3@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA1NSBTYWx0ZWRfX9X6a11IOAQSV
 s/e1jz8NpzKS20ZENbVCQnDJ/KwoBXO5cwwKg3Ffr3BApxOt1IewrrpD4ydgglz5DWHyf4gdaco
 xyHGM3KMY7LejdVjGdArfJdNz1XmKf8x5FTWykvWGkxbAX/uNYG7O70QVmgDtJtY2Lp7VxbvjXD
 le0f4JDly5jGgT3ysgKW4GkKBdLg3mmas66kZ8uaawLMMMUw6eNF+QppoM6rAmxDOf0A99fKi5L
 LajveoLPG612BhlAbKZ6O2NPWqi32z7gMt/vJvqIITCL9mmwxAwo48s9XFMeSQBfAlccnLcs+Gn
 rgVrfRUvuhBK0VzXiQdIvxrTXk79TEWnPbtWHjmv0D2HaEg0s2cVQENVbvVOzr8YYFFT2WSlGsg
 6l+os8ay8Ne3W2enecVBUeJhwlOngg/fsZZB48+IpnQm9daqDk+0CKWvrfFBvt6y2ga80y+gICT
 gAF6kFAOHuoPdo8Bd/Q==
X-Proofpoint-GUID: 6boNppzhCr89AZ4BXoGRztCaFh39lsPd
X-Authority-Analysis: v=2.4 cv=SJJPlevH c=1 sm=1 tr=0 ts=69b7b0d5 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=e8CD1ygSFDIBAwsAQqEA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: 6boNppzhCr89AZ4BXoGRztCaFh39lsPd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160055
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,pengutronix.de,linaro.org,gmail.com,gurudas.dev,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-275975-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3B2E1295968
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 3/13/2026 6:55 PM, Krzysztof Kozlowski wrote:
> On Wed, Mar 11, 2026 at 03:15:42PM +0530, Kathiravan Thirumoorthy wrote:
>> The IPQ5210 is Qualcomm's SoC for Routers, Gateways and Access Points. This
>> series adds minimal board boot support for ipq5210-rdp504 board.
> You combined around four or five independent subsystems. Where are
> dependencies and merging conflicts/strategy explained?

Sorry for the inconvenience. I will split up the patches per subsystems 
in V2.

>
> Best regards,
> Krzysztof
>

