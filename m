Return-Path: <devicetree+bounces-309606-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id J/RYEDsrKWqfRwMAu9opvQ
	(envelope-from <devicetree+bounces-309606-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:15:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F66667B98
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:15:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=ORWT8b1H;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=E3mP9Rn0;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309606-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309606-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82838336B6C1
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:59:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31ACC2D6407;
	Wed, 10 Jun 2026 08:58:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D693B47CD
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:58:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781081896; cv=none; b=oLFumHYRtAuo8Xz3C0ssw6aaW7axIU/J0THGM9QOmYhEv0KlRLr2wmHjhWMhgvfohHeLnDKyueWFDl5DY+p2+XcN2mURuGpZ5cdisAkAhCzF9P1HLsecBq1zJJcgwMVpOxJKgNNF4nnBZTfJWFvJe+vbAW8avv8omrGRw/2hUJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781081896; c=relaxed/simple;
	bh=QAyghAcVt5eMp9xbZvGFYS2BVeiVvAYw2ldCx0CAKus=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i0BgZxY0AHM1yXquhLfHBpa87RCfGUlkti2uG1ViX8TWRsT8HtNmDSbDU0Tpz2xVbXeZ52ofsp6PfK+VMGpRYy//T5pPZ/EATovq2S6rcddBKdOhjwUQkrqYKlamJgVByqTJoO0+EiRwGsWfXh8cuuLZ0NE0sJHdWUX0XF9RWpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ORWT8b1H; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E3mP9Rn0; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65A7iZN4904459
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:58:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wRCC2WnM2rmyRkqpJMx+C/5ibx09IpAJLZaFTYDrsgA=; b=ORWT8b1Her7iCjpe
	qSOyQ7/l/JVGS8CYfWOEVjftHWxF9YmnMcdT5D/7ZVlUJUU6AI2eGoF/BliQl9bD
	LZIaPb6CZASgxFy5ZqMNVZ/a5sW8e/XOTs6d+sfSmvJAzHlnotQRhZjL3eeCtUh9
	sBSiuoVuWsTWg3Ud73ALGRoFK4SX2SDHBVCwu0Vm+bZlYgqYEbp65JF2BCHJlqH8
	hC8kcmKBqLZ9oLQKh4/dD8GDBE7kVZwDM1GIeOwvQS7KVdmSD/i8Fpo+VPO2dVJw
	S2fNjnbXVmNhs+QHDWX8K87BKOXflSzaZRGyKwMW1xsHMhu9clhtJB8i7i/6m07V
	hfBdrw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4epuket5a9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:58:13 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-517796be724so13165141cf.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 01:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781081893; x=1781686693; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wRCC2WnM2rmyRkqpJMx+C/5ibx09IpAJLZaFTYDrsgA=;
        b=E3mP9Rn0Cx6Dj5QK1L0IcgEW7bOqoUqxwIyzYjL//oOrckfmnI2/bGvcyR7GZ0dkIh
         uuVOuTGZufIjcrT4MzpkYvwmEwzqDN6ZbMWZOwtoGythy4U8N1tMDoYPE4tK3ZwwcGJO
         mID9aIhq8783Jjs+ffMT04h51s1stBuyl4Wz2j9GVMrYkEpv+d3mgqEvWUIPEF0UNd67
         0X+6orPjD+muaWAMYNCGX19QdE/dCf2pwWZ52SEEVh1hKEc2hjEqqWoQJ9db0Kb2xLvQ
         vDoOpa6Iz3IvkU5tdAUv342objjimPX1SQx8piN389yQkVLzAGc0Cy0HPe51cJRa0bE2
         uLlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781081893; x=1781686693;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wRCC2WnM2rmyRkqpJMx+C/5ibx09IpAJLZaFTYDrsgA=;
        b=lEecX5YYbhmpdMrVK/JCrYwuU05f1Avodb5ESZQY6j/FsOwiWbTwbwpbZ3RWD+cN7c
         WDZG85o2lwPapP1nnllPaqEBuVJSRlqzgj1csrJtdq6Dh/ziXorUYvG0Xvyt8Nwh2LDS
         ajLHpCRwdTs1DaPvbCdlCfhMF6znattpe74cPfxfg+/5qRxiHUECziCpfLny8voRhWgF
         C+5yn2HFFK/9oID1hRL9+CUv3iF8o0gK8SknzyzY9lWGnvxDVqCzeM5DVhlmpS+Ae3sd
         PmgDE5reOvtBKcJPNJA5ghOVifPsYssnn73iy4D9jgkdKPjWxutXYBy7qhOw9dURt3qm
         2u8g==
X-Forwarded-Encrypted: i=1; AFNElJ8/4fjK3ZbYlMG8hVbhzpuFfIO6V1aZVoKcNTV9S2QF2YXn8vIxpSeGX/LFLI/bMgnpD9Xol3CaR6Bg@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7dtjjt0wiyuBulP2aLM4vPVXB2EMWdbAc8kE4RZDwJBubRxbu
	RfDm+giNBgrwK2nefqiDs37GV6buBRTc22xiMkHqnajQJeZq/Ok/zbgEwLBxkmhgB3m46rsJWSh
	TB0HBg+e8ZqRSqAXF0a/0keQe6sWMN8ZVYYCbkdo4Dt16xQjEaWnb7vbOTBoU/e7+
X-Gm-Gg: Acq92OHTv2DdGbUc7LnEFFAPaN/GrnXUkr6+vyYHogDiCGQceJOXjYE38xQ0fzxwtc6
	hl1GRYmCiia2uvRuxFX7UXFizrZQubqSd+GMtLgVNltdQ9DdJ+Pqrd7+AUTGnt8rpfl0JQLurH5
	1DynxrAvWhHbDtl22rEoW+X1npBoNHNFBMo2dur9Kwy6CB0Lv9WbG8/w0vv9ymgbzEM59d/IDPx
	CyxQIXoeRa+iPq/uu6w3poam2UpnnRK0gUGfQFEaa/vKjKhc4JgjTlZOCMR6/pE5ujlNbedw/0v
	YtQcjVv24OhAahtFCbhBl0OoAI5hGS0JCW9VNIygVPAh+bTf04KKhw4y2FjnbWDsDasMh35lciN
	GREWYejXNXsSYfZQ012hUtlDrk/Trkb/1vbyMZptyW2+fUcJjDhNLa2kH
X-Received: by 2002:a05:622a:11c3:b0:517:6162:daf5 with SMTP id d75a77b69052e-51795c1a37emr195017651cf.3.1781081892867;
        Wed, 10 Jun 2026 01:58:12 -0700 (PDT)
X-Received: by 2002:a05:622a:11c3:b0:517:6162:daf5 with SMTP id d75a77b69052e-51795c1a37emr195017481cf.3.1781081892417;
        Wed, 10 Jun 2026 01:58:12 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf0559eee00sm1168984066b.56.2026.06.10.01.58.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2026 01:58:11 -0700 (PDT)
Message-ID: <a4ad1686-4b23-4521-a69a-f4468066a07a@oss.qualcomm.com>
Date: Wed, 10 Jun 2026 10:58:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: ipq5424: Move PHYs and PERST# to
 Root Port node
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260609-move_perst_to_rp-v2-0-6c731523d08c@oss.qualcomm.com>
 <20260609-move_perst_to_rp-v2-2-6c731523d08c@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260609-move_perst_to_rp-v2-2-6c731523d08c@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEwMDA4MyBTYWx0ZWRfX3wffqMJ/W6/7
 /LFfbkao71anKb0ADnWnKF8fAdwzO6Rdy/cbgWK5reCRuH7rNCWkYHQ6IZqESPOYj1CF5SI7B/6
 Y7g89k+myIuI6wbFJJ9hCj3kO4UyWO0OBp8kkAw9o4znAZQK1ijT9yMBVQn5dr1NvVkMSfuQVRF
 2H+U4q1tp8d8cewKjYoKRLjmEpy/sNuu2Qj4l1rFKH0TuMwCvv/3Ts/khLQewhgGC+6d8RoY1s9
 Rkqt0GzKybMR9VfwU/TdUYl53ChKtSfwadt9Sgw0yJhwowe9ZBQyshgmituZCqpn5vtSOvLESMo
 PBWwbw5NnZnnjf0z61jaImGPwDuuLZX/lrl9MzDlfV99vAfvLUmhpZdwf7g+3GOFeIycPndCoRi
 Ia0chr2Xm59VQXcSjVEEH+sf48jAZ+H96ExE1IvMslJJO6RNGNBqCOcJAR91sOPf7WDipK3QPrr
 r9eC//jD76mH/I6HtQg==
X-Proofpoint-ORIG-GUID: JfQ5-ZrDmVuCBaRcZQCy1PnjcNsFsNky
X-Proofpoint-GUID: JfQ5-ZrDmVuCBaRcZQCy1PnjcNsFsNky
X-Authority-Analysis: v=2.4 cv=DNG/JSNb c=1 sm=1 tr=0 ts=6a292725 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=b_Pr7HiucSRPs_5II3MA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-10_02,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 phishscore=0 clxscore=1015 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606100083
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-309606-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:kathiravan.thirumoorthy@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dmitry.baryshkov@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 96F66667B98

On 6/9/26 7:04 PM, Kathiravan Thirumoorthy wrote:
> Follow the new binding style by defining PHYs and PERST# (now RESET#)
> under the Root Port node. Avoid mixing styles and move these properties
> to the RP node.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

