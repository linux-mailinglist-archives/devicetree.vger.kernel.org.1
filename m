Return-Path: <devicetree+bounces-261850-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCSTF9i8gGl3AgMAu9opvQ
	(envelope-from <devicetree+bounces-261850-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:03:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D70F1CDD24
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 16:03:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2D66B306E2C4
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 14:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59AF2374182;
	Mon,  2 Feb 2026 14:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VGzS2n3x";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kQrdi8g5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003DE364EA9
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 14:53:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770044041; cv=none; b=sStyj6+i5+vaf/yhP3oAHMEfeiCYAEaQBiYhEgHyfbiAocGjancBW2sSRbOa+tddPuLw6gJ8HGzamkEkyM8Uh5GRy3PowbK2D7jwcYd9J12y7RSTU+zjQtsXmhD3yL+8g9/jHRRqm7cJXaJ8ZSRuExDMbf1VAyyP1fc/Pc2ddIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770044041; c=relaxed/simple;
	bh=UqeDK4RsfAzKZ1rg6NnKveKlrERd9ILP3xgumZ/4wr0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W6cbBvwrm64r0cDcYT7WV9vA9Lsyie+hhnBEVxxz0X8tdR1C8haWSBY4zqiWjA4I1qls27VqjksHrDIUJXpjJhia3jb5El1uY03loKB9F+erkdf1xvuT3bXzViHTKrUtoXPUx2OdbSSciafNFMIQ2AgHM07wG3Rw0wQdgEQOsXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VGzS2n3x; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kQrdi8g5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612E6R5g721975
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 14:53:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jsknitCYb9UiikAxJqZ9uv2e+Vzn8UiuNyv88IZxQ/Q=; b=VGzS2n3xh3AWYRCz
	74VKX9bgR8mA1WDUITCcmoc6e+RqAyg7PQ8OXOseItw0+WXB0vFhvSthIIRQ41O3
	V0hNtCcA5yVKvrfFmseiiWfFPGB6tKux5I4yL6d1ZMc9Uw9+KC2YRirSdQ7fdJg6
	Etc3uNPcnMXJ9K/lpN29LEjtAiuGXuBe1UWlWEJGmZLN9C8EKbgP3m5ZMbG7jzhl
	xx+AUZxM3UWj4eUyr60Nh/hYVP8Saq+HVmyCyZwcgRBESEpl/eG1DL9NywTppfS1
	ZDJJSuqd0+hntCaWiEvra55oST9NkkbpMYOcgxOtyx7JCzSCQagsgNqB6qfsHvV4
	I1ByIw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1awnwu3c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 14:53:58 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8888ae5976aso13373216d6.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 06:53:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770044038; x=1770648838; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jsknitCYb9UiikAxJqZ9uv2e+Vzn8UiuNyv88IZxQ/Q=;
        b=kQrdi8g5mXF/FMODWzUXqMBradhW3wTezdIgwjakwgOXAJCdtonRRT8l4PuPJFU+BE
         79iU1u43HUUYD/Sadw21dWDCCF7pPI9USgDR5MZLjnY7zWLCTJeGvX2J212bo4zlM+S/
         /KP4wG5rl3BfPnbiiE7qGhrCbNZvTAUNgVzFiblP7QW9I6OEQOBu2vaYregIolITOyAs
         PZT4j8U/0g4vxdifzD7oVzbrV2soOEyGg4wnmwVQh/aXmEBexumlIClmcXh5la7mv8it
         tUyCQnD+bUFgNjTsYav7uXfHFQxDk/8O70GVQPxrPf2NtIAOxZWqBChBiZLASWkW9yiD
         WlZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770044038; x=1770648838;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jsknitCYb9UiikAxJqZ9uv2e+Vzn8UiuNyv88IZxQ/Q=;
        b=cHlZy5yvX+gmqSs7w54LAqCjo2l+9BWgC0hBgJqYxEQoh5nkH4CLsfTSO+ukRj+5TP
         gyVRCaIr052G6lRdd4kuZLEsQqyer+96mWRaAPC6MGcCDKCBDmL9VfHvUxAHGFtwy33K
         KgZlTvaC5cTa+TepLOIyfoE2SLjtPV+5lVJAhlDxalBuvsaEWu9AuzI/99FbIKWnPJiW
         Q62f3U+TrgZ4MuMxsoTrC1CRnSGOJEXS+ONpDfkm4qDzTHiiPO9iDmV99pWUT5iULbz2
         hQ8qCY8PHhd174WTRwV8KclhAtX4ceKj+E3qasd3zqIY6oVvgKaS/69XZFwOir6JleZ3
         f5fw==
X-Forwarded-Encrypted: i=1; AJvYcCXtbZgqouRilhHpKVSyB/F4DxprZIFCYF44pakXg5l3vKaTeb38iG3HAINQgyflmhbiqBWVGEh6AGH1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/JetPEX/0QNHqvU0VKR2ku5JvWiWVyQQjV1FjXygSl0PTb62e
	DI4ELi578FTygjCnfUirb/mh+7jv+WxCGWaxDM10UqzE/V3YCAZd4kOE85WpPmt4k0EJsF+NAj7
	NK7t1opCuOD64p1YOTXPsoAyj7evkmvoVTAN76lPSVnZ52G99b2VAV0P+H3AfgdVe
X-Gm-Gg: AZuq6aICKFeF6a1m4ZgYpVyaCQ0aAe2XSVbksambof04I59qj4iLIo8w6c0UNGCzGPW
	9Aw2H8eWxeBOqYdNU6B3evP393gQT7sIeACqga4Cmi6GVvm7oT3YkFEQMgwVp5sJM1UVtqU12vK
	4itbN2o45quyo82VleI4x6/VY7+ZNH9aD6TsjqpyTdRiAHqkYoALzsiyisT+om5wQa+9Y7V78n1
	c9RjrECp3hYyStKfNfB0xWtV3bBihtnijQimQ1eKvZwmL/NkOmxWBC17yj8SC3w2aw6TDaPZxPV
	vwcD8IBvaQPk1n94g9qNRAic9rrxUz7b1BWCdF22C3pTAV8znlZOc2CFi5MuRL/TcOZIGgKSDfC
	4BWIV09/Hv13SkZqvnCD2SXtJseXQ5cPDqEVWo+6Fni+Cwp0vzDfz7Gf0oZHpG5QcvYM=
X-Received: by 2002:ac8:5889:0:b0:501:4504:6f80 with SMTP id d75a77b69052e-505d2288f8bmr124104471cf.9.1770044038222;
        Mon, 02 Feb 2026 06:53:58 -0800 (PST)
X-Received: by 2002:ac8:5889:0:b0:501:4504:6f80 with SMTP id d75a77b69052e-505d2288f8bmr124104051cf.9.1770044037676;
        Mon, 02 Feb 2026 06:53:57 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e07481b5asm3638004e87.19.2026.02.02.06.53.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 06:53:56 -0800 (PST)
Message-ID: <6e5924f2-a9e0-45db-8a79-b328ebd12a0d@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 15:53:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/12] i2c: qcom-geni: Enable I2C on SA8255p Qualcomm
 platforms
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bryan.odonoghue@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com
References: <20260112104722.591521-1-praveen.talari@oss.qualcomm.com>
 <20260112104722.591521-13-praveen.talari@oss.qualcomm.com>
 <8e410852-37f2-452b-b851-19b7c4222727@oss.qualcomm.com>
 <e9d3c0b8-2abd-47a5-b594-83f0288d95ba@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e9d3c0b8-2abd-47a5-b594-83f0288d95ba@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=MNltWcZl c=1 sm=1 tr=0 ts=6980ba86 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Hn_5opO5PlqZgVx7yE0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: kWIbiB4fnJoA7Vpro8MVAcXAM8eVBO39
X-Proofpoint-ORIG-GUID: kWIbiB4fnJoA7Vpro8MVAcXAM8eVBO39
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDExNyBTYWx0ZWRfX7X7UN469UT/o
 IZAGdWFaJgdHkazKdUwSEZpXOZvCPVQ5py0gC90YkT2dZfU9qcG18DNtKaQd3qr4dKJsqytTByn
 PXPk48EsnZTjvppAAgp+oxBQKMQUx0QnFGU+jiYZzQmFnakOOC7n0SXslzdpzNGpIo6m9Ef50O0
 QIZngyOEPedAOZE0rENJ6YTeyZUKZGmu1H60oOlMe9p95ZxHhLsEqib3niLtxeaL2sRn3bnkInT
 US3LrR8E3+Ec+0iGsGAMlg1s8Wb5nel1pkzt4hMZg2VA52paX+9qxP9zuBO2sPfQvfh/fU2bWHz
 nms6jd2BDOqmzJDcYxhpVNsGE17ZOW9dZb5XQz/Jn8mXm9L2hIg34GcnSn2xA6G65hsqTp5MSEA
 v1JEHVHvz3pbQS+uCC96JdN7qBRO6iIrEiPC9kb2qfdEIhswOurPqEF+befAQE5xRETwwtf/mDV
 0JMDoO1Wk8/77gwXRnA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0
 bulkscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020117
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
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261850-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D70F1CDD24
X-Rspamd-Action: no action

On 1/30/26 5:44 PM, Praveen Talari wrote:
> Hi Konrad,
> 
> On 1/30/2026 6:04 PM, Konrad Dybcio wrote:
>>> +static const struct geni_i2c_desc sa8255p_geni_i2c = {
>>> +    .resources_init = geni_se_domain_attach,
>>> +    .set_rate = geni_se_set_perf_opp,
>> This means, on SCMI devices you won't don't the vote on the POWER
>> domain (or PERF for that matter) and switch the GPIOs to a _suspend
>> state - is that by design?
> 
> With PD_FLAG_DEV_LINK_ON enabled, every pm_runtime_get_sync() or pm_runtime_put_sync() on the device triggers a corresponding genpd on/off transition. These transitions are translated into SCMI power‑domain commands, allowing the firmware (GearVM) to perform the actual enable/disable sequencing.

Does that handle the >1 pd case too? If so, then all good

Konrad

