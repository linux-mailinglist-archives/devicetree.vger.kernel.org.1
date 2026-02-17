Return-Path: <devicetree+bounces-266084-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHPNEaFTlGl3CgIAu9opvQ
	(envelope-from <devicetree+bounces-266084-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:40:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B5414B7FB
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:40:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9BBCE30086DB
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C9EA334692;
	Tue, 17 Feb 2026 11:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i5L05+bN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Rd4sx2Rm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66282302741
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771328395; cv=none; b=MU0fYbUQFQnopM7/bjWVKyDOKNznL5LSRjPfLmXqOG//jWvDtDRd5QYcFyqEwdjTcToD5SXR5+3orcqj/OyjHfGEUnubc9U4v3nYnB1K3sfNURPE3S0zE9CcrKwuGDi6tlVwWpxlu0Tu7AV7xISdsBceovJoY7STb5nF1nGNjKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771328395; c=relaxed/simple;
	bh=QsuwglBs+zRzTr2NV7KRHwtUPNxAO16CZ3Y0FqqRsAs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Uix54H5x6sdcXgPcjgO+KITX9904FcaYM+od+gIcBZ3h4LNRAJot/iefiI3RuCpb2C/3xDIV322M/dimqjd3WrcpMtQL8APLXlOVWUcghohuc7X4XcEaIrsakMm3QqS/l/cTnFGJHOLW+iGfyC7f7LbL+d+T+IfLqKN9eoeZKT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i5L05+bN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Rd4sx2Rm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GNUZwY2417574
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:39:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WEaN+TOcw45eckwzgu0y3RymRNT+PuKjJJFzwTDz88A=; b=i5L05+bNtTk4Kp93
	dGlKEUw9UMSKqJ6QKRUcw7saSC0kSLDcyny6oEczG65A5c7BjXQf4zwIEl9MM9xG
	YZ3yVAa4OVFMj3Q8C3zkC8A6Y91Ksjf9+0uJ23dqWmQDOsD/VFERJYfSV1l1R0m1
	HVqYS3HbOFvQ7tXuY5bZf+V23aQHfdeZJgha9JebYt6d76lGfiCRAiqhtpTSjRKx
	6e65t1LzusUCt5pbZzvojTvXlaPS9zPLGTDlSsZdb7k7VvosHXEBROB89veqhHlv
	JtO/7/e0qeIUeyfkwX9/0NiZ0pdR+o6NASzOf1QJpPRuHlMseuBY1ukm2WzAYkhx
	fVXkRA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6tma2hk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:39:53 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70c91c8b0so328135585a.2
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 03:39:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771328393; x=1771933193; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WEaN+TOcw45eckwzgu0y3RymRNT+PuKjJJFzwTDz88A=;
        b=Rd4sx2Rm8fHEiKxxE3yATwe7qKN5QITMMoT+VH2iJfFuj+xhnFJSyEIZe7lHQq88vt
         7hAyBjJLRCU/1cSNQKlk2H9197HoYRs2xWxD6ADnsBbuP6N2owoDhLSRvP0pfBPVGx79
         1zw5pIC44tLGJX1NIDETbfCaC941F1OyqVUn5/1V3LQZz9sNwQWPadR2noeGbFsDzAOq
         4DS6QFpXXJVyNib4LiPRXPzK248+53MrVwWBXk9rlDKmhybbi+B47SO/h6z4GTuDF5IB
         wQTMZ4bG3uxO0n+9hhSTwN3H4zwD5Ow4Eh9YY7PbPf0R5D8ueLGRCIP7D9HF7/5cclD6
         piHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771328393; x=1771933193;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WEaN+TOcw45eckwzgu0y3RymRNT+PuKjJJFzwTDz88A=;
        b=JQad2dMyc2r9Euxkwsu/ZpNLzmfmwZJkJWCZxyMQptzkLddMKJVS7zX5HsJvExTPTS
         GeBMgoFzgwbOZ+HTvCHNJpNXI+9pXdSjxwODUZA6YNfQC4Mpbr76hDztLDNexD9aU59o
         Eo3rsi5HqnlUbBKsYz/davoXEaGY8D7cnXWUwPfJ9omoV4h3QX5eukKGfzJVyxf/N7Fr
         Bz1GSUK8YILrKcZXs9SlaExnFtg78qQN8UUHInq0OWgbheJTK18vSeQXB1PkJMaPb7Hi
         yGNXjJgvQWKjyyqd4Su6ISuih+K410OdDxGYks44t1beeFqWOTQyOq2dpt/ZoBieAmgB
         xv7w==
X-Forwarded-Encrypted: i=1; AJvYcCWEHV2jI09pvh2ArpUyA++VXiIR/e0dyk11PbnATdJzFiG2LU93vM7ONIgt4OBqjlp2WMheWiFqqF0j@vger.kernel.org
X-Gm-Message-State: AOJu0YyU00y1Y+tMhGfibpRdzkIw2NlNf1pQMkfiy5z+Oqrmz0Obb3/t
	nPERvvd9GkItS92DL598q/k4A9kIJgZN/0bCv3iioW4MnBCI9icaNE248/7RN4I2iPYj3SFB5Re
	Cg2GxeYHZCXxDe1OTYCZ/PeiZBXBklYi8IiXhZe2bS34mZS0xgubEL4uey4NevFY1
X-Gm-Gg: AZuq6aLB9ZpTUr4KMmaXSWV0n41D6YTtEHjEok3UBr5k7ldhCQk2Gwhy/uBSiv3R4pz
	XIDYUJ3+FnpWWZO1yCEc6LLRpWDPMy/e8Gv9Izrz0cWGG/QMh073yW0hOMKgoMrGPbgin+tl+aZ
	6xaghJS4i3z7j/DLb52Rul0y9UNWdsq3hlvPgQcpK1B58ZwTaMlmbpydSeTVArpoUx/fHmD+kIx
	IigK9aqXbzpwYpVaXEw/Lc/sDKWWdOCTUCN7nDkANGT1N/wMKQACiOeLsBxOrwsyB3LNmdtcqL1
	qR8FJJwedlZzDjaBMdHt7pk7OXDRB5in3Q/6FGeR2s7U3hLXlXD9sUGTZlqvkGeKpJeDbWbsigO
	qYJOT3rcZtHJQUi7P8ygY1C30D6+79yj5BAy5MkSAc1qjAj+IhPJccCyA3iHaa+KLf2VvTpft92
	IzSEQ=
X-Received: by 2002:a05:620a:480c:b0:8c9:eae0:d1df with SMTP id af79cd13be357-8cb408b8285mr1323282885a.6.1771328392810;
        Tue, 17 Feb 2026 03:39:52 -0800 (PST)
X-Received: by 2002:a05:620a:480c:b0:8c9:eae0:d1df with SMTP id af79cd13be357-8cb408b8285mr1323280385a.6.1771328392353;
        Tue, 17 Feb 2026 03:39:52 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad19bfc8sm2309709a12.1.2026.02.17.03.39.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 03:39:50 -0800 (PST)
Message-ID: <119f619e-9f3d-4c21-8cf1-a8b4e1024ed2@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 12:39:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 06/13] soc: qcom: geni-se: Introduce helper API for
 attaching power domains
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
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com
References: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
 <20260206174112.4149893-7-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260206174112.4149893-7-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: s4-otSaOxlM7tm-CguTAebDdLb267z7V
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA5NyBTYWx0ZWRfXyzxAs+AAxIug
 6R0R1CYY1IjPwwqxwhHIZgx7ER5jm6toeEnlBD+XoQX2rxbZqEVZKk4aZOBwFMyCdBD0aUEnO7I
 +YxDWTUUXrVtgvE5JlPDzV1RBru0j+l3SRMPmhItj1aXDo/fgU/gWm93XNp/wOmz4mlSaZNXcEP
 UAj3IidDifQAorUns05cehFctcafi1xjs/+0FRAYJYsMRvjgYvbAMcy32wMENdcx5fTY0v4LPgZ
 7k4/Kz0btTGmDWBBxIW8pUrL4wHog9SdLUFpFc9W7Rxfjhs8lkonxioR1kvUZ21YfoiY+WgARTz
 hnqdi0tZTbff+M+pfK2cD/y5oc3iSiDXmiYZ0dUHM9eWh12Kish/MjV+ZVPeokviyvI6MPWU/5o
 KYxJOWu9vZTnM7ljbFfwxs/bofpmurDrUmBWps8McaVfcj7xJJpRQe3RgNKBiSooq5cgG5/dCKr
 oCIanc99ZzGDaetGVUQ==
X-Proofpoint-ORIG-GUID: s4-otSaOxlM7tm-CguTAebDdLb267z7V
X-Authority-Analysis: v=2.4 cv=IOoPywvG c=1 sm=1 tr=0 ts=69945389 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=Wk3v8SmLDDZtl8l8IssA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170097
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266084-lists,devicetree=lfdr.de];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+]
X-Rspamd-Queue-Id: A3B5414B7FB
X-Rspamd-Action: no action

On 2/6/26 6:41 PM, Praveen Talari wrote:
> The GENI Serial Engine drivers (I2C, SPI, and SERIAL) currently handle
> the attachment of power domains. This often leads to duplicated code
> logic across different driver probe functions.
> 
> Introduce a new helper API, geni_se_domain_attach(), to centralize
> the logic for attaching "power" and "perf" domains to the GENI SE
> device.
> 
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

[...]

> +int geni_se_domain_attach(struct geni_se *se)
> +{
> +	struct dev_pm_domain_attach_data pd_data = {
> +		.pd_flags = PD_FLAG_DEV_LINK_ON,
> +		.pd_names = (const char*[]) { "power", "perf" },
> +		.num_pd_names = 2,
> +	};
> +	int ret;
> +
> +	ret = devm_pm_domain_attach_list(se->dev,
> +					 &pd_data, &se->pd_list);
> +	if (ret <= 0)
> +		return -EINVAL;

I think we should preserve the original retval for the < 0 cases

For == 0, this can mean a number of different things.. but in this
specific case (where we always set pd_data.num_pd_names == 2) it seems
that it would only be an issue if dev->of_node == NULL, at which point
this function would have never been called

Konrad

