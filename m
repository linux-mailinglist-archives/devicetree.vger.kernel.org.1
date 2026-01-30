Return-Path: <devicetree+bounces-261268-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iIowDfPffGmpPAIAu9opvQ
	(envelope-from <devicetree+bounces-261268-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 17:44:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CDFBC991
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 17:44:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5B0E301F304
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 16:44:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B48303502AC;
	Fri, 30 Jan 2026 16:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m2qblr0o";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LiJNUhhN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0FF346AE6
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 16:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769791466; cv=none; b=glk3Z3Rnr2S2iSurU8nVN+Z0XbxdMQnPbwxAEgXMM4gKYiaActd5w3CrcvqpaEqgrKvsjni2m5Vz1PF3nBsd0roJLUi62NHqwAAc3JiHHE4nhGcUir2KTkyacIX9EahnIypJCmiSF9gZ7ciWBOvWiwGHXgatnlpdCb95vBL7tpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769791466; c=relaxed/simple;
	bh=yez3OppoYEvzvHqgPP8Op7queq7voD/wLWYBFRMWLBg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LHZ6uauukOh6AICChgtpdpFfwCd9ZS9BzAEpLbfrFV/2h55GDTaT9JQpDCmCKT/GDkT6s7HgfapQ6sQkcEwxuprnOvg767Ni0TM20qVKTHaJkZq6NipZbrpx2lX21mMZ6il4uf/bAtseQ9m01k1ngLM92P40EIhWfxXON6s9Yfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m2qblr0o; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LiJNUhhN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UFB8R92415318
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 16:44:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Pb5P25J2+yJr3aAp+kbXRtjGFi3YnmIjvMmocPYH8eU=; b=m2qblr0oNwVVtmR9
	TodGEmHOfngaCo4QwGnQUdtX5YvzULPmU4WsunCr/24aceVWQxm95tJvp1V1omT6
	PHyirxWgYzuRNogwJq8DnyEE2g72PknMs4u5YsAZDjnoarplAjtAn/Uz4s2/uVxN
	6TrhMZ1/MRm+nZkl0VX4UkfCv1TkM1IEc1h+To9kc1O4pJGyfk2YxlW3J3koeCwd
	6fjm+zEBwPWaMdKDdSv8Y69BcuWKzuC6R3xdK3QjVIpUAZuupIHTq/QwT6Dj/WOk
	SREFlBjjd1sx2j7EOUgJMpYZOtWysykIeW/u4ZA4K5e5A5cRH3FSvjDSOkTs2aCF
	RrDa8g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0r41hqq5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 16:44:24 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a79164b686so24536685ad.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 08:44:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769791463; x=1770396263; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pb5P25J2+yJr3aAp+kbXRtjGFi3YnmIjvMmocPYH8eU=;
        b=LiJNUhhNAN2F8A1n3E/Nnmska7DDhGOooQssq0++qeR9LbjFve5dwP+t0ee9vPWBw8
         Je9w1L/X2m2gZRdfbf9yfGe6JuGe4ATwwSk5UZY0woJv+sco/F+idHDTVX9FrF3wEzdK
         h1EEq2nWU6imAOqre4Nvu3ugcSx5ZdBysCiwzf6raUpluYaAHumaBd38FMcXMYV8UNJu
         Exdk3FfVS9sBzD7O/869WcmJT22bQT7OXC0hvEBV1/MmE0bZof8rk3UKm6oOAWhxdU57
         kSlosPswWptDIdgsZFpJbOnP5/DWBHHdZGYiLkYGYZZNDUc0qKLWeTgq14+Ns59W/1Do
         /w4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769791463; x=1770396263;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pb5P25J2+yJr3aAp+kbXRtjGFi3YnmIjvMmocPYH8eU=;
        b=Vh1LpcQdyeZk8/w9LL6+OeRMFRMmlbd29Sb45LvBj3f2YKUYIYi2awCTKLuBK8hG05
         c1t3Zngnh0dMnOXCI/Eq2q9AuGNqZzGDHDexskma8TRBj8teogNO/WiUQTeENJ6AVF+F
         RuFsNSTA3S+foDIINvh480oBbXAhceN1T8hRfYQCVCLyL4kQuMpuLqwHZK8KTI/QU+EE
         Nj6XR2qT+zP4CF2wBl7SZDoQgk+AQ4dDneOHoySUT5bPW1IjEnOM9N6OKTUIjDHEoELG
         0nTnYHdmemtYXkd5HqxxbEaeB9L0EkBngZJaTE3JHo+6+996tJh7gQTXyDd4miH0uI3b
         houw==
X-Forwarded-Encrypted: i=1; AJvYcCWjskHCLEU2FfAPhyF19DDSMht+uFaC8BIVfE180joS2oKl6z0oQHgPtNfnvGOBtnYXrh2zIagwBN7I@vger.kernel.org
X-Gm-Message-State: AOJu0YxN8s9BkHPCSfXLRkX2ibjjuNuMylShvO5zCJ3sQu7LFgaH7U6l
	uFzTyuCEysyEtQUNVCjFS3FMSN1XaC0Sf9BxLBJ5XL1UYIoewttRa7jsYT35/BtnYZW86gXiz+Q
	+EWFDTZyaXcCDu37990DwAZskbGjXnjk9T1+38HIlFkONdtPNkqutCh5xpN0H3/ho
X-Gm-Gg: AZuq6aKOHRA+DtC/9q0D484tqAgG2IYAstQBYCCWfIDwm3vaiEvHvlbfOjLWxPnje66
	3LRC7lW2Bl129TpB4jTkztuXZP2RX4E28UvT6aHA8u5vugYLcgmTsxhD+MB+QGDkiqdBNV6hHsz
	2eOLefL0xM5ofhSEQGVrFPxTVw1Es6jy+ebt68qULqNqep01PWrut5US/JPvkM4PSTxI+uySRE6
	IDRAPsFdKCgmEOf2l3s/qfrQpvNYLtdOHvUEA5B7V4PAiu90XVB2kxcs6zLgCX/EnJxbBJJBAVn
	bGFiQTKQWL1j8Z6W6/qvQLCazMqbwm9l6ku4NA8NK0XV/PtTCCxSeHKY2ed4OxLsotgV7syfMO7
	9Cc+TNkq6DcZDkhBpaoyHaQfD9RwQdaWjMTVVOwR6
X-Received: by 2002:a17:902:ef43:b0:296:2b7a:90cd with SMTP id d9443c01a7336-2a8d990aaebmr36989105ad.32.1769791463345;
        Fri, 30 Jan 2026 08:44:23 -0800 (PST)
X-Received: by 2002:a17:902:ef43:b0:296:2b7a:90cd with SMTP id d9443c01a7336-2a8d990aaebmr36988745ad.32.1769791462739;
        Fri, 30 Jan 2026 08:44:22 -0800 (PST)
Received: from [192.168.1.7] ([49.204.111.90])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b5d9e25sm83063825ad.80.2026.01.30.08.44.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 08:44:22 -0800 (PST)
Message-ID: <e9d3c0b8-2abd-47a5-b594-83f0288d95ba@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 22:14:12 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/12] i2c: qcom-geni: Enable I2C on SA8255p Qualcomm
 platforms
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
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
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <8e410852-37f2-452b-b851-19b7c4222727@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: SzVipbU1nk10YfjOAGFNvsg1lpkuKPfd
X-Authority-Analysis: v=2.4 cv=W541lBWk c=1 sm=1 tr=0 ts=697cdfe8 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=10aD+GSAjGS7IfLbEAHBKg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=hbV_D0MF1U8yBtKqu6sA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: SzVipbU1nk10YfjOAGFNvsg1lpkuKPfd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDEzNSBTYWx0ZWRfX7UCivzbG9iFn
 oBAgYlDGva4S9XlgCKMKZl/GUZem029Wu4YkJn77omrJS2mCNaPRhDES1gtY6GzY25Rt1st4Dos
 BoluKZUntC+pETaOIDoRdl0Aac43GYDptOsilY35inYXjRk3vcAkIlLjwDkyVAseWL4gadLZu7L
 i8UfjZyIp83PlTBotS/VqOqL1IFFCI5i3X6G++l0mS9PrVnQk8U/QMRelFP9xk8/R4i7dkZp+8P
 5NRQjIpZmhELFsyj72HCb6SiYnjY0T6zw1aQNIFVZegRGyC51Vyn5qCWQxU/1YzCMgyXHegf98J
 yKSWklDbK+wjVWs5BQ+b2xugzKVC0Cfv830Rz48d2fnuhleIwYPU9k5tulJMRbq2er5ZTe68qgk
 RkGBIX8KIA/ldJQtwf/AjeMA5Vh/Mahgkkv+mcezkRkVSJrJnk6xKQgFSDcmLemeFp8RicG+RqZ
 iLlGktD7DRnryFh5JfQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_02,2026-01-30_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 impostorscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300135
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261268-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C7CDFBC991
X-Rspamd-Action: no action

Hi Konrad,

On 1/30/2026 6:04 PM, Konrad Dybcio wrote:
>> +static const struct geni_i2c_desc sa8255p_geni_i2c = {
>> +	.resources_init = geni_se_domain_attach,
>> +	.set_rate = geni_se_set_perf_opp,
> This means, on SCMI devices you won't don't the vote on the POWER
> domain (or PERF for that matter) and switch the GPIOs to a _suspend
> state - is that by design?

With PD_FLAG_DEV_LINK_ON enabled, every pm_runtime_get_sync() or 
pm_runtime_put_sync() on the device triggers a corresponding genpd 
on/off transition. These transitions are translated into SCMI 
power‑domain commands, allowing the firmware (GearVM) to perform the 
actual enable/disable sequencing.

Thanks,
Praveen.


