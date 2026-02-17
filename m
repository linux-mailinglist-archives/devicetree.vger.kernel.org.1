Return-Path: <devicetree+bounces-265987-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NsGBx0dlGn0/wEAu9opvQ
	(envelope-from <devicetree+bounces-265987-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:47:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 875151494C4
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:47:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 55B913012CDE
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:47:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F1F72D47F1;
	Tue, 17 Feb 2026 07:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BMsJ3Tx2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A1F/4uRu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE5323C4F3
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771314458; cv=none; b=N4+1Iq8aBdXPHJhtNjbozKTWmby3VlpnnWoMmwD6zwVbPZdRioZQiNs1Ow4jrXDnsRGxZh+zqDOvcdrVU23eI1CO3b0fudcgkxdmuhGRMzjPcbQjO0H1Oq3wCMbAEm7mMiEbMJFyzufZa/Sf4sPgJNqu9dkUSoH5PrMI1/MGz9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771314458; c=relaxed/simple;
	bh=2jGxGEuBlJscNQnXWDluFEDy5ghSOzIcnct0+mW6ZRI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kA/3OjcX2ojmvzR6zC7OAaHJWdU+0hR274uEPPW6J42UsDcIYV19gDXtSxM+gaKj1wWH9CVGIqLfZ6Uas7dBttpRTc+4elG4m3tU0Hko7E8iNb7KBfpvnT+sgblNL+brsVKJw6e/JhQSES3D2XT1W2ckVq1JcemVdHRZx1ncv+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BMsJ3Tx2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A1F/4uRu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GG1dcR048739
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:47:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9IwUNyGoySH/Ufr4T9HjdVC2VQgvcnJRhQYb4OPxhIk=; b=BMsJ3Tx2u3EKMJxL
	wBV9vvy0qnc1SpJFVMJ8aJ19SAB4zJU88VqkW80A9l3ZTKdeFTBIMCIeozmEkvYt
	YXzYsWaHJ3FA9Mudkejh1MMyAPkLWzJ9LrvuJHje+KYFIqIOdEJE7B8aunTfy6WK
	MtOangzJSUUdqiH5fnkIenhsQy7+/8C3MhLFM+O9PRnQv1Ckt9Ptnf16szXpT8p3
	im9eSLMrqfQp8NFhe+mZ+QgUmoAzMIGx4XtvQ0tEK0if+bQV3KpkPf2cfkwSwE1+
	WC+qkXjA3eTCULc/x2NJKP5lN7idozZxAvVGW8zw1MnAOmdGMtebwAuOnYaSEDkf
	rVuhEQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6d81jxm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:47:36 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b62da7602a0so3077514a12.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 23:47:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771314456; x=1771919256; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9IwUNyGoySH/Ufr4T9HjdVC2VQgvcnJRhQYb4OPxhIk=;
        b=A1F/4uRu2/kdfQvi9t2zO7AIj4YkKfSLVXrE247RKDbgTNqeDxo5x0AABvM1ZDUtoA
         qRB1Pg1KZG15U3Sp/IMfAF19ZUhdYJ9F20C0n9sAmRPHi59hF50pXBp4bqI8kNgKQHvf
         dNgek6VJd4tPc7I5dVYUYaYdTIQ401K5EAJ64FAsRvQ0R84Vr8H26uX61tS7iq89zHS8
         wHJq8pv6SahkeYjW7InMg165gIYV956Apu59RYN/v+UOHJFjhg9E6n8AI6bq8ApFCVQP
         exh7tcebFw+ApBj8Fg+Y05gRPS3nrk7oRb4ehMX8tU5IJSLQJtgd9ewtQfwbSlkzcA76
         //yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771314456; x=1771919256;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9IwUNyGoySH/Ufr4T9HjdVC2VQgvcnJRhQYb4OPxhIk=;
        b=C4vAVdQhw/HQhsBmo7Ee+emvnrkMl9DQJF+W4HK6xFdMyGS9OzuD+6vP7tIJMNTT6a
         WpFeMxVhYPAVU4MsRXM0pjUsa9087kAB5GAfXi6rpccXu778HFGgZDegYYxHRMFIlaqz
         kRl5outtvsyQi2vRwizTN1XgS5DDueJ9TS3ixnjHiIrt3l6XnXam1B+N9mZ+OGCINdfx
         2pvd0Er9RuzpmoBRWSck17ffhlY17OBYsWuVtdzvKZECRgeVBB5RCGXoVgIJu7lv77em
         rTpuBDCDrPIDdBuCZPWn3ga/F2EAmy2r8SnheORE683hQFQg+rbUE8ohaUw9nvOolkji
         eJeg==
X-Forwarded-Encrypted: i=1; AJvYcCV7eN0mD3VoAWB+g8iR0MUogQVoDNGIhRB+J8BN6czmyGcR6ABzXYmRAwaqwR/f1FSXkhNen7IIJ40H@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/FNJXQ+i5el+bWCVxrKhDe+Y8dkHGcG+oUZ7VmNoYhMoFmaQy
	SUJf4BLn4HvmkJFEnQc4m2b0EMagjhfT4MYfZWwYGv5yaS0BU7R/G7l6hjD75Y3KyliePdUpC/F
	gqWjcoAPOxDgmQmIMK2AAxo4ibYxTSFrtWCvqxWNaDyxPXiLzD4KilunmzMOZdtoQ
X-Gm-Gg: AZuq6aIdhYzzIQ3yFAx61UBDGLhvicWBHlKMEPZ6K7srmhJtPmywn1Dk9PsT0iO+1QZ
	JT3rdGzsZdnmgjLKm/RzYQLl+zFyZjOMIXInmyhkzAVLELmb/IfnHwqqblcqlokYd8Fl6kzvjKT
	xIHJICl1pv1/JURH4/KfuHHFQgZH7Go4mQ/Hj4g9fFytONx0JmUCcvYxUdKtKfTmMJXClc9XuWl
	E50PMxfcBe39BB/Ptc/EdovxCS381sDwOhJQxSkr3LLZ3THRphK8znWwOVYVD53tD4RcO9RPPxU
	enZmeu29QsII4E4qj0eNYf0jxNT3YXJQAHyS65XI6wtmW1V79zTvngoNM6kdj3Tx47ZqD2xwyEn
	js6j5VbKFOfL1CLnTIbvHNpoZDaJvui58umfSD89J0gharqgj
X-Received: by 2002:a05:6a20:72a0:b0:394:593a:eea4 with SMTP id adf61e73a8af0-39483a47260mr9250290637.57.1771314455563;
        Mon, 16 Feb 2026 23:47:35 -0800 (PST)
X-Received: by 2002:a05:6a20:72a0:b0:394:593a:eea4 with SMTP id adf61e73a8af0-39483a47260mr9250267637.57.1771314455026;
        Mon, 16 Feb 2026 23:47:35 -0800 (PST)
Received: from [10.218.16.122] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6e531e6cbbsm9049846a12.18.2026.02.16.23.47.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 23:47:34 -0800 (PST)
Message-ID: <19d3cced-f630-4a6b-853e-3798487fd769@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 13:17:29 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] Bluetooth: qca: add QCC2072 support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>, quic_mohamull@quicinc.com,
        quic_hbandi@quicinc.com, janaki.thota@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260217054731.3058567-1-vivek.sahu@oss.qualcomm.com>
 <20260217054731.3058567-3-vivek.sahu@oss.qualcomm.com>
 <mt4vrzmq7caqddwtz7nc3tn33zxh7uupoxfmk5pfqobhuex43f@se64qz7qvuh6>
Content-Language: en-US
From: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
In-Reply-To: <mt4vrzmq7caqddwtz7nc3tn33zxh7uupoxfmk5pfqobhuex43f@se64qz7qvuh6>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bqVBxUai c=1 sm=1 tr=0 ts=69941d18 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=ddT8l1QBLkt25e737uwA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA2MyBTYWx0ZWRfX4YBYGMLQLpMJ
 2TzO/WQCX/CqSDJDbhBEK8+518AagGNQWSytXX8gsXStVH/Kk0WIGfGOODnp9b7lnIPvpBzB9fr
 u6ByTbvV6ZuZPvzMBW4imv+s0vdbPB5y/6tjUDLSBRGLmKDfhJRniF0hsbW0ep5BJK96NQsea1I
 1SnFvflmZljo9KoMfW1RYPQH/5QhfM4fvi4xPT6wEtYHY2H2LUNAp2Pt65UtYGfeQva0YqGmknC
 2X2a4ye1Be5DYRMm/7nd/+C7oG9UolW2prdxrDx23N1sABk1VJH0cwZGj0uTaXGYqLrtv12QV06
 YE5actL3rMt0w7wMdUWgRUlQ/Wa3T1RvumzqKQt14Sm2I36jOUhbzV4sM4cUMjfu4+cZW97KIai
 6Il86SR61Nmtro3hdC4IrhGCO+7AjohAWBWzaDTHCjV3SpU/d8xFu8sWDGlmbYTVCZfrp+0zvWO
 GBgHYEOQcbLZ/toiGWA==
X-Proofpoint-GUID: cbQJ7Eq-SYXgYior2Jpm0xFkajVLU9_x
X-Proofpoint-ORIG-GUID: cbQJ7Eq-SYXgYior2Jpm0xFkajVLU9_x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 adultscore=0 phishscore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602170063
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265987-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,holtmann.org,gmail.com,quicinc.com,oss.qualcomm.com,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vivek.sahu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 875151494C4
X-Rspamd-Action: no action



On 2/17/2026 12:06 PM, Dmitry Baryshkov wrote:
> On Tue, Feb 17, 2026 at 11:17:31AM +0530, Vivek Sahu wrote:
>> QCC2072 is a family of WiFi/BT connectivity chip.
>> It requires different firmware files and has different
>> configurations , so add it as a separate SoC type.
>>
>> The firmware for these chips has been recently added to the
>> linux-firmware repository and will be a part of the upcoming
>> release.
>>
>> Signed-off-by: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
>> ---
>>   drivers/bluetooth/btqca.c   |  8 ++++++++
>>   drivers/bluetooth/btqca.h   |  1 +
>>   drivers/bluetooth/hci_qca.c | 18 ++++++++++++++++++
>>   3 files changed, 27 insertions(+)
>>
>> diff --git a/drivers/bluetooth/btqca.c b/drivers/bluetooth/btqca.c
>> index 9f7e13fcb20e..65c8d2978956 100644
>> --- a/drivers/bluetooth/btqca.c
>> +++ b/drivers/bluetooth/btqca.c
>> @@ -807,6 +807,10 @@ int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
>>   			snprintf(config.fwname, sizeof(config.fwname),
>>   				 "qca/htbtfw%02x.tlv", rom_ver);
>>   			break;
>> +		case QCA_QCC2072:
>> +			snprintf(config.fwname, sizeof(config.fwname),
>> +				 "qca/ornbtfw%02x.tlv", rom_ver);
>> +			break;
>>   		case QCA_WCN3950:
>>   			snprintf(config.fwname, sizeof(config.fwname),
>>   				 "qca/cmbtfw%02x.tlv", rom_ver);
>> @@ -900,6 +904,10 @@ int qca_uart_setup(struct hci_dev *hdev, uint8_t baudrate,
>>   			snprintf(config.fwname, sizeof(config.fwname),
>>   				 "qca/htnv%02x.bin", rom_ver);
>>   			break;
>> +		case QCA_QCC2072:
>> +			snprintf(config.fwname, sizeof(config.fwname),
>> +				 "qca/ornnv%02x.bin", rom_ver);
>> +			break;
>>   		case QCA_WCN3950:
>>   			if (le32_to_cpu(ver.soc_id) == QCA_WCN3950_SOC_ID_T)
>>   				variant = "t";
>> diff --git a/drivers/bluetooth/btqca.h b/drivers/bluetooth/btqca.h
>> index 8f3c1b1c77b3..a175ac31e7b2 100644
>> --- a/drivers/bluetooth/btqca.h
>> +++ b/drivers/bluetooth/btqca.h
>> @@ -158,6 +158,7 @@ enum qca_btsoc_type {
>>   	QCA_WCN6750,
>>   	QCA_WCN6855,
>>   	QCA_WCN7850,
>> +	QCA_QCC2072,
> 
> Why not keep it sorted?
> 
As mentioned in the cover letter "qca_btsoc_type" enum in 
drivers/bluetooth/btqca.h contains all the soc type which need to be 
enabled for BT enablement on the target device. There are few places 
where logic of framing packets transferring between SoC  and Host 
depends on the which generation of the chip it is, refer api 
"qca_read_soc_version". So It is not sorted in btqca.h file.

>>   };
>>   
>>   #if IS_ENABLED(CONFIG_BT_QCA)
>> diff --git a/drivers/bluetooth/hci_qca.c b/drivers/bluetooth/hci_qca.c
>> index 8e035b7c6f3e..7786ced0bbbb 100644
>> --- a/drivers/bluetooth/hci_qca.c
>> +++ b/drivers/bluetooth/hci_qca.c
>> @@ -625,6 +625,7 @@ static int qca_open(struct hci_uart *hu)
>>   		qcadev = serdev_device_get_drvdata(hu->serdev);
>>   
>>   		switch (qcadev->btsoc_type) {
>> +		case QCA_QCC2072:
>>   		case QCA_WCN3950:
>>   		case QCA_WCN3988:
>>   		case QCA_WCN3990:
>> @@ -1500,6 +1501,7 @@ static int qca_set_speed(struct hci_uart *hu, enum qca_speed_type speed_type)
>>   		 * changing the baudrate of chip and host.
>>   		 */
>>   		switch (soc_type) {
>> +		case QCA_QCC2072:
>>   		case QCA_WCN3950:
>>   		case QCA_WCN3988:
>>   		case QCA_WCN3990:
>> @@ -1516,6 +1518,7 @@ static int qca_set_speed(struct hci_uart *hu, enum qca_speed_type speed_type)
>>   		}
>>   
>>   		switch (soc_type) {
>> +		case QCA_QCC2072:
>>   		case QCA_WCN3990:
>>   			reinit_completion(&qca->drop_ev_comp);
>>   			set_bit(QCA_DROP_VENDOR_EVENT, &qca->flags);
>> @@ -1535,6 +1538,7 @@ static int qca_set_speed(struct hci_uart *hu, enum qca_speed_type speed_type)
>>   
>>   error:
>>   		switch (soc_type) {
>> +		case QCA_QCC2072:
>>   		case QCA_WCN3950:
>>   		case QCA_WCN3988:
>>   		case QCA_WCN3990:
>> @@ -1551,6 +1555,7 @@ static int qca_set_speed(struct hci_uart *hu, enum qca_speed_type speed_type)
>>   		}
>>   
>>   		switch (soc_type) {
>> +		case QCA_QCC2072:
>>   		case QCA_WCN3990:
>>   			/* Wait for the controller to send the vendor event
>>   			 * for the baudrate change command.
>> @@ -1935,6 +1940,10 @@ static int qca_setup(struct hci_uart *hu)
>>   		soc_name = "qca2066";
>>   		break;
>>   
>> +	case QCA_QCC2072:
>> +		soc_name = "qcc2072";
>> +		break;
>> +
>>   	case QCA_WCN3950:
>>   	case QCA_WCN3988:
>>   	case QCA_WCN3990:
>> @@ -1970,6 +1979,7 @@ static int qca_setup(struct hci_uart *hu)
>>   	clear_bit(QCA_SSR_TRIGGERED, &qca->flags);
>>   
>>   	switch (soc_type) {
>> +	case QCA_QCC2072:
>>   	case QCA_WCN3950:
>>   	case QCA_WCN3988:
>>   	case QCA_WCN3990:
>> @@ -2003,6 +2013,7 @@ static int qca_setup(struct hci_uart *hu)
>>   	}
>>   
>>   	switch (soc_type) {
>> +	case QCA_QCC2072:
>>   	case QCA_WCN3950:
>>   	case QCA_WCN3988:
>>   	case QCA_WCN3990:
>> @@ -2108,6 +2119,12 @@ static const struct qca_device_data qca_soc_data_qca6390 __maybe_unused = {
>>   	.num_vregs = 0,
>>   };
>>   
>> +static const struct qca_device_data qca_soc_data_qcc2072 __maybe_unused = {
>> +	.soc_type = QCA_QCC2072,
>> +	.num_vregs = 0,
>> +	.capabilities = QCA_CAP_WIDEBAND_SPEECH | QCA_CAP_VALID_LE_STATES,
> 
> No regulators? How is it powered on?
> 
Host to controller communication is over M.2 UART, so no regulators are 
required to power on chip.

>> +};
>> +
>>   static const struct qca_device_data qca_soc_data_wcn3950 __maybe_unused = {
>>   	.soc_type = QCA_WCN3950,
>>   	.vregs = (struct qca_vreg []) {
>> @@ -2758,6 +2775,7 @@ static const struct of_device_id qca_bluetooth_of_match[] = {
>>   	{ .compatible = "qcom,qca6174-bt" },
>>   	{ .compatible = "qcom,qca6390-bt", .data = &qca_soc_data_qca6390},
>>   	{ .compatible = "qcom,qca9377-bt" },
>> +	{ .compatible = "qcom,qcc2072-bt", .data = &qca_soc_data_qcc2072},
>>   	{ .compatible = "qcom,wcn3950-bt", .data = &qca_soc_data_wcn3950},
>>   	{ .compatible = "qcom,wcn3988-bt", .data = &qca_soc_data_wcn3988},
>>   	{ .compatible = "qcom,wcn3990-bt", .data = &qca_soc_data_wcn3990},
>> -- 
>> 2.34.1
>>
> 


