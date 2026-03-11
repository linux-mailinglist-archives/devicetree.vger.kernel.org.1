Return-Path: <devicetree+bounces-274103-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AB7dBKBtsWlVvAIAu9opvQ
	(envelope-from <devicetree+bounces-274103-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:26:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE87B2647D4
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:26:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 106ED3222BCD
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:21:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1564D31716C;
	Wed, 11 Mar 2026 13:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bacGXNJW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KSQ5OkQf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0C9131B810
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773235258; cv=none; b=G8V9HQqztOV77oJmezrPnwBStpZSkKz/p25fggVrSGVlE2AKIPbHwofYOwhBmo621f+VEmwQsJ8lxqVWr5tfQpbbYk/nIcwV5BbX9ghAYaoFtknywgws78sJfudGwTT2hWqtWDQeKnzaDL9SR3SNDH6+Kk+0IvOjEDNEungtS8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773235258; c=relaxed/simple;
	bh=5YugjOz+HdRUy2XsP9iwWKjQohlRwLKjRkcJ36Mijmw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UwEBX7kvgCtY1kiZTZrOjOOQQVEnDeokkKZVj50Gn9tlIvTjUxIyq7wpYLQXez1Y3+FB1P63F/sERdjIDeQyPlT4SX+Xj+AItDkdo48UnUt0xLUISAPGWK8ckMU3kEwvJf5TIJ3LzVrJwI9Y0U6X1+Zcc/RHzVLTEC9t7hgiC1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bacGXNJW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KSQ5OkQf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BCJMdG2140298
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:20:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X/KpjEcjrBSw229vMgSWlfoi2t/w3dtq/Ha3mvvsA28=; b=bacGXNJW1ywveYjp
	jk1s1D5yfUr8PZI2mWitOay2EcLKM7ErGNgsZsbQl5eiUFy8AW37+eohQFBlTRn9
	6M33OQ8bATpPfBgqkTwVmfRG+qQzus7A6HYuyenk/Ro8CxfaGfLdJhqXnOaCfb6Z
	je8xLjWVtjQSdRA70WmptQzETm7WllIpXak8zxX8KfC0k6AQcGuHUOgBev8KCBRL
	71cxu9ZBxU8GAUMrr+UoZ9E6Vyf0sWpvWnGb9jjkuw0wOro+kK7HvqdMOwVBU+dJ
	GWlbKAgIWfajucoUmMk37ozWDb/FyyM0K4Og+o6Zzc8QEaUGMCI4TxHASH970QDn
	YWBrzw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqgkbqyb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:20:55 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb456d53a5so118329885a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773235255; x=1773840055; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X/KpjEcjrBSw229vMgSWlfoi2t/w3dtq/Ha3mvvsA28=;
        b=KSQ5OkQf1+PdIUVyIAueVqzlr9qWNFvq1FNbfhicEYv7RtiZ/g0t3vuBH2wyYA+tK1
         CnIOUgcdQ20tBfKXHVo15H06zeGmNTT304fjCH4rLSAlNWfhG9X+UIN+PIr1QvoKnpwx
         P83KmeMUJdO8R9bNA8yNyhZcaRTGDhS1cQ6NzdfGe3pnhMhyC9/K9MQ8YwzR/8OjCZJa
         AELOb6qybUNPrOuZ+kUPj24LfWWCJiyFKienb8qdeBoRqCuh2IlVwFAWD7+vqTaapPaS
         CkRtfK/l+cEemehuJxaxYe4/D+cuFeElwk3NtkDStSkj3D2RdvnYCt1QOkSIlnaUmNNe
         7uyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773235255; x=1773840055;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X/KpjEcjrBSw229vMgSWlfoi2t/w3dtq/Ha3mvvsA28=;
        b=o7ZIzHU4vDu+UjCmxHoe+UZTl0Rk+0Aw53/MNiJ5vRlKJ7TuSeOfdGYHgIGYKVaoUm
         yZqjfkcnXXZ2aH+/IBfCYqBkfmZx7jD9ZEyEinMm+GnWO3F+Scds5pUaJABcEHPdKbVV
         PmFz6Ly/sK04O1h/xZKFRsdy6sgyGG9RR+MjdAU5Mjgx15N4cLsq/n2URK/aum2gVDHK
         0wf/2AmAsv4IbFpfgUWGWhVLyKG0KUE6dRoc6ATxpXaeulc9fTyZLoBn2fGqbvNDp79c
         qiZhyFtHEY0NEXBP41c24HyC78gNXvwO4PPatK6glGYvyErObmPxu3ZUfrkbCaEw34vo
         t1sA==
X-Forwarded-Encrypted: i=1; AJvYcCUP1MmN8ANR3fq5I4V105W7BDt7Pc7XX3F3yWygHQwbrAA+MornkO8zkD+T0bpY5+Y6WUC7Qp8cKVMX@vger.kernel.org
X-Gm-Message-State: AOJu0YyvM9JjoDtDcCqfVYbNzjdvhtDKNzT7gUSsa0T79AXYUKPCwA6B
	UGPPgvwfQXd75ioO6LtVKU6Dfnf2xAkzbjN6xaTRCDmu4h4BJ8fmFrb9eYqGZeZBcypzIXU5H9k
	MXomgEcJEjfAXe/KXiZuveGxV2hm6xgH7yhGGMCL+nJlRAVOJqKJzJuMJulWX9jk3
X-Gm-Gg: ATEYQzzJE0NgvUPCOAHrnwt5epfuiQc+riestJS9r3fUInLrQjq5Yf9KoQhtrZt3fHn
	Za4WKUkQo1la4IwEvtVbizVBnjWx9cRwH7uW8w7eyn8DxeCfbiue6kflTki/4G/OanJaUzwVLa4
	RmGMbzU7Px6EWdBxQzAwJUGvyoTbqqe5gEPRODQ6EwhOa4PIolY+2mOyx915b4AMPzHCCDcAiVD
	YlwCcPuge678dGzbSG3rEhcHrX7MeGuQXXCyP/89D8MNx4Wqhh6Q6HWswMnEMHTRXt1VCxfyRUO
	JkqEHeIk7s3IQGLeQ6Lx0Zan4sdIfnrOYCJMOeoan2BKSH5bU8+tcG9krvKD0L6r0S0hAvKP+Hm
	glB4txv/G21T9DqB91bGaU8PcrNYTlj/NvSA7jD2nR2tkt2mlS/LAdBHkxsZ7AyvnwMlJv/MdNt
	Tsz8s=
X-Received: by 2002:a05:620a:45a2:b0:8cd:8d50:16a0 with SMTP id af79cd13be357-8cda194a812mr270676485a.3.1773235254942;
        Wed, 11 Mar 2026 06:20:54 -0700 (PDT)
X-Received: by 2002:a05:620a:45a2:b0:8cd:8d50:16a0 with SMTP id af79cd13be357-8cda194a812mr270672385a.3.1773235254510;
        Wed, 11 Mar 2026 06:20:54 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-663144821adsm524831a12.8.2026.03.11.06.20.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 06:20:53 -0700 (PDT)
Message-ID: <2511dcdb-12f9-4946-aff3-4dd19d8d9348@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 14:20:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/10] Fix up WCN6855 RFA power supply name
To: Konrad Dybcio <konradybcio@kernel.org>,
        Jeff Johnson <jeff.johnson@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: Luiz Augusto von Dentz <luiz.von.dentz@intel.com>,
        linux-arm-msm@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260225-topic-wcn6855_pmu_dtbdings-v3-0-576ec5c4e631@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260225-topic-wcn6855_pmu_dtbdings-v3-0-576ec5c4e631@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: WShbbompFRiRqUWintRkttbfoLezf2r_
X-Proofpoint-ORIG-GUID: WShbbompFRiRqUWintRkttbfoLezf2r_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDExMiBTYWx0ZWRfX2qUnO/uqMjID
 UYdwpJq72QRlmi/Gq15+4EC6pfgMAvhVauEBja7BZeBEtTgl6bCG9RXu3GAct5i2YY5fWyxTDUG
 4qT/faEIXCmLjkSxvjN5jsq6491v+k244g7bsc0aDAaoCCLhIk365flMcT0H57T7jVQJ6h5oNQc
 DPqVO5zJ6TuU//XW49nWe8jrXfC3yRkpZYcvhG8XyP89wrk96kAaBFtlNv3egl9iJeJklPZsZgU
 jCJcTNIpL5SSbTc9GFO/P2IZjAB3X/ZjpVsVLkzdNwriIlNwqu3iUe9H+tou8Ac2vWcPSvSDzMt
 zZFoMy/0n+A1jtCs1pFvkNitlt9qdFhq6hyP0UrdPgOiy5XwsJeKR7EgSKCvofGIuJqi4FGx0LT
 vjJ1bYRJt6PQUWPDESZPkLMQgx/r+dQrOeb951yOEqo3C/8bJZzbMhGF2uy1rmh2ZOatiInLt6a
 E7DwrXrDKVWEbc9D01Q==
X-Authority-Analysis: v=2.4 cv=M4JA6iws c=1 sm=1 tr=0 ts=69b16c37 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=M7h3R06PahCMBt7vG34A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110112
X-Rspamd-Queue-Id: AE87B2647D4
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
	TAGGED_FROM(0.00)[bounces-274103-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[kernel.org,oss.qualcomm.com,bgdev.pl,holtmann.org,gmail.com,quicinc.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 2/25/26 1:23 PM, Konrad Dybcio wrote:
> Commit 5f4f954bba12 ("dt-bindings: bluetooth: bring the HW description
> closer to reality for wcn6855") renamed the supply representing the
> VDD17_PMU_RFA leg to mention "1p8" instead.
> 
> While the supply's voltage is normally 1.8 V, the bindings should
> reflect the actual naming of the pin. Moreover, almost all DTs define
> the output as 1p7, so that ends up looking a little odd..
> 
> Ultimately, this is a "fake" regulator that is consumed for the sake
> of DT sanity and this series is meant to bring uniformity and squash
> checker errors.
> 
> The last patch fixes up a less-trivial warning.
> sc8280xp-microsoft-arcata is left out because I don't know whether the
> mounting of the chip is on-board or as an M.2-y card (although I would
> guesstimate the prior).
> 
> Depends on the long-ready-for-the-merge series by Krzysztof (per-chip
> bindings split of qualcomm-bluetooth.yaml), mentioned below
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
> Changes in v3:
> - Rebase once more, pick up more tags, it's more than ready to pick up

This series has not really changed since its original posting in
December, could we please get it merged?

Konrad

