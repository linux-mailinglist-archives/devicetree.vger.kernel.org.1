Return-Path: <devicetree+bounces-262935-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APlONfFjhGkK2wMAu9opvQ
	(envelope-from <devicetree+bounces-262935-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:33:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0A7F0D4A
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:33:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 96DB13003EC3
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 09:31:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55FAB396B6D;
	Thu,  5 Feb 2026 09:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d8hkvYhH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A65Od5tV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2053236214F
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 09:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770283886; cv=none; b=WryQWdunhnJqxKwUemO737TikKsppGBbteUfNIubnC0ujxaVeoIUHlNHzHIwmmCItglsYBRodWZsUSUZb/l9LdrQX3zxYdoMgtA3BziFFFDtfklPTKnd9anlov2YBlYL6GJL3RbjEJ7lXbFTNEPb4FjHuGIoKjOzNNVUxBH7kDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770283886; c=relaxed/simple;
	bh=M4dIcQup37e84bK2JGpKMGQHoRCk1BsKlKPjyX8pXFU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q/HXe5hwqxMajaa9vEdiL890erRufGZSdYJE7I/McVhaTirypTpxn0/QWTBb9T+4iHzBh0OhZ6Mr17mRLh0pg2nabWImoGzHk7SfCHkpgQOq1E3+lQVjo+j4eql/E2+mBGcVjtOUNVapv8wzAB8OuAayD640/7LhKL0W9AtPqH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d8hkvYhH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A65Od5tV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6153djMr2759475
	for <devicetree@vger.kernel.org>; Thu, 5 Feb 2026 09:31:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fB7DGDcRydyU7uBgXFuwMgUMBlijYsR/mIeTVIHC4u8=; b=d8hkvYhHPU+94Err
	1vKZ9rVrOqRYXCZre+LdcScQf9UFMg4IB76PxwtuuRKpcRs+5DNU2VRx5LtPGjdl
	TR6Zl7tshih1+MWFnUTYR+Cp29E17sUc+7UJy28kvVob3zKR7l6CX7QGAJhwSTHA
	rNEhzEC7ntfiYE214+VXyzskweN5TzwhSh28tM49T0kcun3/YENcCoM0sGrzZPVV
	m7ivFA8ZoEutQyyuihizNDgYneHJzut7jVYF0IR9T8C72GPPIFZgmFyVWCpMmcyI
	CR9tZybIOUSziA2dz7k3heq7O5pHgjMjxyolZHuCG1/g+8Pi8g9R064evJpM5FCt
	zq/I4Q==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4jpd15cq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 09:31:25 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c38781efcso709030a91.2
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 01:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770283885; x=1770888685; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fB7DGDcRydyU7uBgXFuwMgUMBlijYsR/mIeTVIHC4u8=;
        b=A65Od5tV+SmOg5fn91pX2DpK2LfiIXLevvNE0Bo6EcpBZeVxIrcQDdfwcjUcPcb+9s
         a8gVLQ3QLYls/coiATkqwk+Ne2fArEIc4w5MMOLZmJy+R1DhIwiNFMA4rW8r1/08uaLS
         8vGSxTt3Z6ln3HjtwGwVXuSyGE9jFfQ6ekU11E1DZ4uaSnhDYIubAvHA8WN3zakLL9Hf
         UZwAwoQKi8oIcvSYeEUbyKl5WxHRdFLNh+T1TgUmtmeiVP7ZORgSWUewfmUROqZDU0lc
         muaXmh21yNIOC8gx4QwWDm2I03UHQPGdeeBK3mWbIOQoeaYallysv6CgFLvYgirZrXT2
         9hNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770283885; x=1770888685;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fB7DGDcRydyU7uBgXFuwMgUMBlijYsR/mIeTVIHC4u8=;
        b=kG6uDxEiQaJQdINQ17O3+YkBhRzZVe79wMWbZpKpnUAYFfn6aXmOPrnOfheJeSholH
         rNysgWiuNs6DsNMldzvS1pUEJw5Px7/q9NWwRwwbSxuj6XWphXI3D+KDYhieh11xms01
         ZZUZ5yWYv1apCeW/Fq+VD7Vc7o50lyfUfuV2drkYrRgl0PbdD0WdW4EwiuL2w1p4ZtU9
         79laIekEDPNtaZYi1z8SOhLO3oglBMDrLYdwOaO2LxrT11dG6H3l2blH1IAzLi8tffuy
         wEvMG2c0lypjgA2BNXwvup+BnVKSHVwAMSBgjiBWb7P6bqUACRfX4nzroBDRpwkAmMVA
         XfOw==
X-Forwarded-Encrypted: i=1; AJvYcCWyzs0NQVuVNsdVp2SzBe+mJLt/4KTSD0OSs6KdsHqpy/vX1PP+UbxsrRwk7Y9TkUCMNQ6NRpH5NrWZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzgydAatCa0Q/Oa6ZqiFPiKN5ER3SOW3Wxs+cqKH9QWf4XSwiyY
	DnYMgZRaPxmEa/1hMQzdRYrlt2NiDUbs+7sUtPo3KXjdfAASdilI5Yg47h4Tgf+/5b8F5AKnM72
	+66I3wIxJAE2fCOV8i+M1YzraHdScj/7+nU53i+aWMghvmNsRA64LKLYg11/jeqMI
X-Gm-Gg: AZuq6aL41eYtIepjzn5R9mo8vy4hQv5Wj89eM8B735z1ZDkzYifo7rThrZVjL2NzJuR
	3CSYWgBQjKNa/yRwJLJT7xzoQRcApUNATQ68Uk5ZrWS97EdhsV2FnxAXY8hNw5lp+BmyrvTQjUP
	vYRrJSYkd4dXLjxAMHqSpEUAXO9uwIs7bnCgnCz5cqDcX3MioqCdmlDe3Vo76pfuXl4dcUrc+X+
	6yOdKatgmQZ5hQ1NUXsS+sydkJrD1Z4gcOIj4BulwvRPsNJkFoznGppqOABJJCr7DufxNi3CAjD
	BLOTXmTtSu0COSAMgkBMnFYvCWlcXyayh66m0ZtZtlBOzUWDTJMweHhHqmAU//HUFAOfmOzdivK
	tIVHD823WBfqqCn5Z4tSAHPhwhmqXIxIr/fwY+xPXifyTMkkTgDVgjQ==
X-Received: by 2002:a17:90b:54cb:b0:34c:a015:9cb0 with SMTP id 98e67ed59e1d1-354871b0c7emr4438342a91.22.1770283884675;
        Thu, 05 Feb 2026 01:31:24 -0800 (PST)
X-Received: by 2002:a17:90b:54cb:b0:34c:a015:9cb0 with SMTP id 98e67ed59e1d1-354871b0c7emr4438304a91.22.1770283884212;
        Thu, 05 Feb 2026 01:31:24 -0800 (PST)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3549c09adf4sm1983784a91.3.2026.02.05.01.31.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Feb 2026 01:31:23 -0800 (PST)
Message-ID: <7e9c4610-1329-4e86-ae20-1509e24738b8@oss.qualcomm.com>
Date: Thu, 5 Feb 2026 15:01:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/5] dt-bindings: sram: describe the IPQ5424 IMEM as
 mmio-sram
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20260130-wdt_reset_reason-v6-0-417ab789cd97@oss.qualcomm.com>
 <20260130-wdt_reset_reason-v6-1-417ab789cd97@oss.qualcomm.com>
 <20260205-classic-cute-panda-a97bad@quoll>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20260205-classic-cute-panda-a97bad@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDA2OCBTYWx0ZWRfXy4zavdu21MyA
 JPZ/wX127xJh3FOSFi6F3HWSGThWa93HwhFnaKWU7hj8KqW6EB9I2n0eLmKsRX0/2eC3hg74KHn
 MkgJ2fbYfd6J3xN9KTkwl2zktvyrJnl+uffRe2nrxWyU04YMsTbrec94mf0QbCQFhpWp4fcHsc2
 cyVqruPKJUASnLFGKX0HoKD/6OYCG7na6i7RX04bQrue3Dazuwf0UdO3ocovlpAGKKCUoHyDMot
 RTIEiokHN/4Ex1KJvLXBsi/wO/JObWkRC75G2I3G3M1krUddVAj2ToqLbnmbDCkecdffc5kwky3
 H6ag6PnabznMnvFyJi5Km1QUysOgMjK5dFbX0RkPCvANTIfoMhQ3guJ+SMaQXTXLw/byCjAYgIq
 /iKyteiTl7DzF7TVv3R/RSxiucquWucgRU4Kck891US9DfjqQIparvpHPzdLugwOQFDXnWCXHu2
 6BqnUOVaL4TcMg06QeQ==
X-Proofpoint-GUID: X7Fsya1rOQqhj1MzoxCFIf0eDu5IWP4g
X-Authority-Analysis: v=2.4 cv=d7j4CBjE c=1 sm=1 tr=0 ts=6984636d cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=zRi7MKtGYgBp9MobL8AA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: X7Fsya1rOQqhj1MzoxCFIf0eDu5IWP4g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_01,2026-02-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0
 priorityscore=1501 suspectscore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050068
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262935-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3D0A7F0D4A
X-Rspamd-Action: no action


On 2/5/2026 2:48 PM, Krzysztof Kozlowski wrote:
> On Fri, Jan 30, 2026 at 04:14:30PM +0530, Kathiravan Thirumoorthy wrote:
>> Based on the discussion in the linux-arm-msm list, it is not
>> appropriate to define the IMEM (On-Chip SRAM) as syscon or MFD.
> 3rd party discussions without any references are not valid reason. You


Here is the reference - 
https://lore.kernel.org/linux-arm-msm/e4c5ecc3-fd97-4b13-a057-bb1a3b7f9207@kernel.org. 
Let me include this in next revision.


>
> Best regards,
> Krzysztof
>

