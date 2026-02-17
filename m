Return-Path: <devicetree+bounces-266011-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNXHKEMilGmqAAIAu9opvQ
	(envelope-from <devicetree+bounces-266011-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:09:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D11E4149B61
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:09:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 19AF63002D06
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:09:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDE632DC32A;
	Tue, 17 Feb 2026 08:08:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b7nvkxL+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Rog7+L82"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E6DD2D59FA
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771315738; cv=none; b=XjIoUS+T6OigrnohQixPXhS5I7KiGN2FcAK3sSUHd97xfDZ5yEZYyBSV1f0IF+b01ShNS1RK0ar63O4ZnFhqwy/dAuJtGsBWbJBZB3Q77uUh+VEcGXICl10gpBOxqFWemyMUGVt7e7dM9SRZ2t8G2B5jbQtyC/7+M6U3nbuxLOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771315738; c=relaxed/simple;
	bh=rJSXGs0qmlV4yY94G4RzjP3fvNdmxV1EujtMkx7W+hY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m36pOXyXLT7qePos9OscFiyLbYThyxH+EYPiTahcXIIoLHmgPYGjtmbmgiIXwtclpSe5f0NKd+bigOZ2JgJbZl5kKXqIR6hEQR1CfwTSiruMHHRCLJZUBll8KWgP3agM7rFnqQRuEJGqLww0KPtYJF7xFGcX8IQDQWEGcyt1XWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b7nvkxL+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Rog7+L82; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H7sNPg982299
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:08:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CKPdjKHIyZEmV+w4LwJOMfNyPVeO224qAfDUWQc/Pwk=; b=b7nvkxL+LZAsaAzs
	aQRDYelLVxhBpxWbWLsK8edzWyWjzy6K181GfVmJZqkX/84F6Qns67ll94yLpPEH
	HXa8DbtBtixW17rqIUaLpRGt5pPlP+fwl5DMOLeo1Qq2am4RBEPFN1MYgr7xzq69
	/nj4yosh5ADBVeqe/fLvcuv3Kqr3qpa8Ixb3e8PfDUktG5ydrb/K6pCeJ3vndq3a
	gHEc/33WmDoay60LM0ePFvqiGFdVwRGomgB3+dMiZ3HNhqR5h+cIO07eYLcc37WT
	+qwecsm9XxjzPdCUdmuNIhevqvKKPgdLA/LVR7w8coZ8gLoFWIraeH5oDxp+N5Nr
	P/hQ0A==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc662smpt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:08:56 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b630753cc38so16331606a12.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 00:08:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771315735; x=1771920535; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CKPdjKHIyZEmV+w4LwJOMfNyPVeO224qAfDUWQc/Pwk=;
        b=Rog7+L82GuA/JHm8GpiK0xNEwmdAlyzuyVWdnQ59wQOw8BQLEkhRA5r+cWKGLL/5F+
         xL7hlsqOe8k7BCyaYHpez8nxuX0P79IHfpKBFxm+TC2HTOafQAJsnaG6PPnLK8l3fQXL
         2Xu21HfQ0sf7dZ3qEQnxT84NbsP6cVYn2JWRzIKrMBgWhdI1r09nTDrUjV7z2BPLFkb6
         i+CMLYSqvzIw8BjV07iA9S2Db+DcZHlfICWuMomPKIjtsZIStW4f6vqFXv5A+2VgnpG8
         c6vuh3NETHSokndO/UyU/cdoqK8Uv1JKfA4tGT5dCb3FEekf9EhgEfzJHQM1znQywaDM
         L9IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771315735; x=1771920535;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CKPdjKHIyZEmV+w4LwJOMfNyPVeO224qAfDUWQc/Pwk=;
        b=rIZhZEKkhMVI7tXVVFkrc6VL7g1QjUDZC9b0gd/H6Cmc3vfpFqY7iONtRuztkHO3GJ
         uznbYyah9Uammv1s/zU7Qf+fIS3fca+Vb2LSVe2zjnyZPtUkpaD8kFrvh5YI+bckz60C
         Bo41CJqZJvwRR0BEBA4x6Qsv8qgpOQCqDKOKtdsD2F63OkQLrJHBuLcB48ou/UxPYE7x
         MxZ5Nz0a1dMonXNDeFmoL6Ja3xl4cu37KpxdtsSeorBtpY75gDJzk0t2xodQEaYxrcoX
         SWXA7rGtKjLWT6XoXz3KjKniRTTzh8OVvNvwyHG5X1WqDpDWvPpnxI0aiVqHtN3SR4E0
         HQfA==
X-Forwarded-Encrypted: i=1; AJvYcCUd+gLYq5PK2FEoJhWHTdeYhMxaSHd7GrdG2PKvWjPO25acvvgCv/cnq5H6aGY3TaiR6XKbGDODc8Zn@vger.kernel.org
X-Gm-Message-State: AOJu0Ywedz4YM2VPoaNjHEadwZRPpu2gAYlWOO/gk+crD8yAVnzMGQpN
	+8l+LLuPQDoVB74n5oU46FIvhVt83Ov5sfM2V1ydzM/jZvq2OkIfYE/OfijogCdsf64uwiPGyDj
	swiptwrvXqRmnvVtsMPd/Cclo6DtpIBhOV50Q24+dqolIm7HkeXW9r/QhAsTGasTp
X-Gm-Gg: AZuq6aIdW+dFyNdXEesoPIEBJQOY1hLj+hz9xw6PGL1N1XB3Pd6DwW+dTykEp9EYmo9
	qUSgOgQ043j0Rx1sS0MhsPgcx0Yht7ZjLprTHiyiimSbtB4FGJB0nbAzYc6ZPp1s0MZYiSz1EZS
	V/EFTech4qInh5eZY540O53KA57X92Xrkwd9uznCmerQz7YzUl+g3zD6qBWmSe3borqR2gaoqFV
	d/t7+NxnOh7kXjVanw/Gblf0XNVdZzG1105c5Sb4vceTUMQaTUidPzCinbG7pYEvjGH2TJJ2wDA
	DCxwT06EIDpjAPyegN3uqtxKoJ93Ex+roZFcpyjJ9BRc72wx9aK71LyEIe0bi7Tzu6WRc32L33Z
	BMSBqKMEmaQm8jxoPDMkcO9Xweqapro6yKjHOKCdFKvmS465M
X-Received: by 2002:a05:6a20:3ca6:b0:366:14ac:e1ed with SMTP id adf61e73a8af0-3946733da51mr14209056637.63.1771315735299;
        Tue, 17 Feb 2026 00:08:55 -0800 (PST)
X-Received: by 2002:a05:6a20:3ca6:b0:366:14ac:e1ed with SMTP id adf61e73a8af0-3946733da51mr14209025637.63.1771315734827;
        Tue, 17 Feb 2026 00:08:54 -0800 (PST)
Received: from [10.218.16.122] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6e5332facfsm9014266a12.32.2026.02.17.00.08.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 00:08:54 -0800 (PST)
Message-ID: <dcbe7aba-0559-4fe7-8c19-abd9f74f5221@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 13:38:48 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: bluetooth: qcom,qcc2072-bt: Split to
 separate schema
To: Krzysztof Kozlowski <krzk@kernel.org>
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
 <20260217054731.3058567-2-vivek.sahu@oss.qualcomm.com>
 <20260217-avocet-of-glorious-romance-8cf9ec@quoll>
Content-Language: en-US
From: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
In-Reply-To: <20260217-avocet-of-glorious-romance-8cf9ec@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA2NiBTYWx0ZWRfXzC+wK4bu9H1a
 a5yGE69QlMLdYS1GPx0XV+wVLs2Kv8Jln6rM1dmdf1jXXvpSarJXFgacLB0KUmc7sBxK+qGGeHv
 eU59o9Hf0zcdrKGz1IQzooIeIVBwV06JPVpCUXITDVL87fVNZQEuzg/yNzlJ4HSfWUal8ZtyFY/
 012ntpERCeuLaGWj0DSrsSpsQibiM7ti0ppUEzkfwybQmbZMXj1Owzf+8NUrAv83/faiL004CFS
 95ITMT3ARVBbgy57ANmc+YPgcmYKUivBswsLawi+U48DccRn+0v1LY5bM9GzlpVTxX0D1mFpNff
 zWtEh7haN5H0P3WYzAWVsCcva1B15Brf66jUIlYLUHqK0L33hrWQVsO47IDBVvxnnsfnvWyoBEp
 pXeQ/FlNkcNd+K2fhD8q7xPG6AEhCOnWBsYiMzEFF5nYz2WT4RdOjJ+/5TdtN5CvOCBYbRUWAW5
 i2ffQ8as20mx3cWX9bA==
X-Authority-Analysis: v=2.4 cv=Y6b1cxeN c=1 sm=1 tr=0 ts=69942218 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=X7cMRLG0ekiW5Bl67NYA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: yYg9WhH-yz5WBSKGfjZtJcdJZEw_MG_j
X-Proofpoint-ORIG-GUID: yYg9WhH-yz5WBSKGfjZtJcdJZEw_MG_j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170066
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-266011-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,holtmann.org,gmail.com,quicinc.com,oss.qualcomm.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vivek.sahu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D11E4149B61
X-Rspamd-Action: no action



On 2/17/2026 1:21 PM, Krzysztof Kozlowski wrote:
> On Tue, Feb 17, 2026 at 11:17:30AM +0530, Vivek Sahu wrote:
>> One big Qualcomm Bluetooth schema is hardly manageable: it lists all
>> possible properties (19 supplies).  Split qcom,qcc2072-bt to separate
>> bindings, so device schema will be easier to read/maintain and list only
>> relevant properties.
> 
> Huh? I do not see any split here and I do not see how this commit msg
> relates anyhow to what the patch is doing.

Let me re-write the commit message with more clear information about the 
patch.

>>
>> Signed-off-by: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
>> ---
>>   .../net/bluetooth/qcom,qcc2072-bt.yaml        | 48 +++++++++++++++++++
> 
> 
> Best regards,
> Krzysztof
> 


