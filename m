Return-Path: <devicetree+bounces-274490-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJ/uI1J/smkcNAAAu9opvQ
	(envelope-from <devicetree+bounces-274490-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:54:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3133926F37A
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 09:54:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 96490301B797
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 08:54:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAF2038AC87;
	Thu, 12 Mar 2026 08:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JvRUjeIK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fLxss9eO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29273806C2
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773305680; cv=none; b=tdnBdy4kzSa5HvjYfOBwscUZ43iuImWIbXtm8CCuCj2YcXWmxkQIYn0Ng4JdqNK4hqsFO4CPs/WugZYDCqBHgAUxkeB1bEXs1iQh5Cf9WzfQRrzaLcI9b9fRSnTKQQo7V3DBep2jqnUK5100EJMxd7dMfAZ/K3Na9IsFbDjg0uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773305680; c=relaxed/simple;
	bh=W6hiN826Nj47dmuat69Ci+wnnicZJ77Cn5oLCDUc+fM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AQGuNWFZH0R9BPfi+7YNc8DOE3e0a0MuYnoIJB1iKu/nlA09D8DDyK1BFOW+xVOCOdKnMKDK88CrkGlYroOGD4ViA+7ip27y0Enpu0KkhN3TvOEJhWHwnKk7Lo63fuJj/PBikDybf3RnnYVnRxq9xRXC0seFREuMyHJtjMtu2S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JvRUjeIK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fLxss9eO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BMNleO4027638
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:54:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ex6SR5AntwjH2hwV8Pxt06HDLsYD3NW0CR+gEG/N2zw=; b=JvRUjeIK8VTnhp9t
	q3Hg0aEdaIqihYMPsopJf8cAVk5ztzRhE3pJxN8X4R9VeciRfrJrRfzx9Ia9s/I+
	+ZSsnVn+xLCUk0moE4Qkf/fr7bz4o1I8QP/XdfAv4lQkbmnxVYlgSgnq01/n8QIO
	LDfZfb1KQJ3dNhoLEYBo+xlEbyNzgbf4rN4N/VrJ3GnnmUqtQpsgQ+5ZZgwHceRX
	19eE4xQ0eDemioYGRO8EBalv6qAhqMApimXG+4qoSQOMFH9IOjwdOG9IzzKqFrax
	fLwN8TfmwV7z/FjBa2ogHW5r/NFzkwwMLllvhtCwXfrmgEoTHDfZvDhtfuMtjzAD
	1oOszQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh54sgcy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:54:31 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae467f128fso8454585ad.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 01:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773305671; x=1773910471; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ex6SR5AntwjH2hwV8Pxt06HDLsYD3NW0CR+gEG/N2zw=;
        b=fLxss9eO+qaKjkGaiODBOh60bxNOM8kCKaIMjfGuM1hIbbniBEgLFyYAWlvtqhWSpL
         xIrqJC6+fF+10wHX3Pn4mQ0UX9UM06KyuGbtHo5x3MKG/lfFdlnZogGYQp4Kcty2mg3L
         wDjO7f3gkp8CbAEbmDL9Iqoc62OSyS9BJG7Obmf8SUXiZfBBTccgrc5v062nforN2xy/
         TNJcUoLu+DwzQTk/2ZsjGvJvlFnElcRcyQB/E3vGteyeS3qiiG74ZXGfz56NpsbEURVn
         4Ws81CPRvSPBCZ5/KKZIj4YCA/KwbBEChzY3z7n/uE1UwZkrKgk3v8i6dY6E2tXBi8Du
         41Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773305671; x=1773910471;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ex6SR5AntwjH2hwV8Pxt06HDLsYD3NW0CR+gEG/N2zw=;
        b=AWZ2cmx/9GwtpGUnozRKyyEjv1HVvqAar5Owg5oACImlmXKXQse1gk7s8O1pq5G8z+
         oNtcjuQa495XIJUQdZpEe6SXgudXUyZyILO3lcEPn1QweF6mKrA8ao2hDwawIFt8l1Oq
         SW4BTWWyFU8o24NV386bYIpp7FDu6lWRnTLrYSxIf0jbPfA+yaHQ/TdRSif1lnk6t1O+
         5hbAfHFkMFdQ4Yx+bkjB4efwyXyd9zoWhoCYRDIzKDwomhPgGBWjdoXtuMa/kbGu7F1g
         tMuaspN6molP+Z2adIzbQoli0udvZ7YZlo3gG8vA5glMUTNcB9znCsuJHyP8ySB+TwGa
         3g1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWgG4Wy4e5Qu94GaWNcON4EzntDsgFS+HG8MKU9xof9qd+PHPT61foIoFuOg2Xffoy7gvtJ7aA1btjV@vger.kernel.org
X-Gm-Message-State: AOJu0YymGZ4dFxh0qn6PlyDCNCYblWJyZClhaLXzcDNWpJdK1K1elhKf
	nmMxFTJM8KprUtFRiLh6nyNQaf01mB7kqom0uRck31JnTb9heMzo4UZrM4TcQMqGbLnMU57082v
	F/6swZpM59b9neplwRT2Rk8GAPLs3B5+7FjkpHih4OlGSGZJGeH+voJFXqhzlfq5p
X-Gm-Gg: ATEYQzxjF0J29V5kwL19YZsHQeg/XnIvlQfJD3EdIJTzmDOMlpTw+lqZfpRlcZO0N22
	JfbxWdS54yuawgRzG0iBqvmUScMzPpARSiFtCBGHplE/YTvsc6gMW98TtAR3QU+OkMXiJF4tEIG
	DpKKkStAJNr89RC6GT5i0O6flq4a/XmsnzK/XXNDcbrp/jC6F7MeRhGpwI/TcJRFjSWn7TsblRp
	3d8ypanb1G3qisRs6kXRV3fylaN4LByrgYY1a92A6ElXSfsY5N62VgV5LvXtVVnExLqVyH5JqVl
	8AolsBvq9gcXwv+ZDwEk2P4yA1KYzp75HeY8Lb+IxDYsiCoB5OBKNK09tmprcdjRuUVUnaBVrS8
	FrHXNFR9CZQwGzckzMbVjlt7jbyuBIHKciliaKjUv10GJtH8c6qicuUSsNNbzFlU=
X-Received: by 2002:a17:903:32cb:b0:2ae:608d:ecc8 with SMTP id d9443c01a7336-2aeae85a33cmr49717045ad.27.1773305670813;
        Thu, 12 Mar 2026 01:54:30 -0700 (PDT)
X-Received: by 2002:a17:903:32cb:b0:2ae:608d:ecc8 with SMTP id d9443c01a7336-2aeae85a33cmr49716735ad.27.1773305670339;
        Thu, 12 Mar 2026 01:54:30 -0700 (PDT)
Received: from [10.30.144.113] ([152.58.131.236])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae222e2fsm66922835ad.2.2026.03.12.01.54.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 01:54:29 -0700 (PDT)
Message-ID: <509fc515-aa29-44be-86f7-a64e2d8f3f98@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 14:24:19 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v20 01/10] power: reset: reboot-mode: Remove devres based
 allocations
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Yan
 <andy.yan@rock-chips.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        John Stultz
 <john.stultz@linaro.org>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Sudeep Holla
 <sudeep.holla@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Srinivas Kandagatla <srini@kernel.org>
References: <20260304-arm-psci-system_reset2-vendor-reboots-v20-0-cf7d346b8372@oss.qualcomm.com>
 <20260304-arm-psci-system_reset2-vendor-reboots-v20-1-cf7d346b8372@oss.qualcomm.com>
 <abEzdgQ6pe0fC-5z@venus>
Content-Language: en-US
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <abEzdgQ6pe0fC-5z@venus>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 2hikOfrgCrxn2ih0420G76zMk6BCkhsQ
X-Authority-Analysis: v=2.4 cv=BNG+bVQG c=1 sm=1 tr=0 ts=69b27f47 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=kINRXkAo9yxRtpb0MKIxjw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=QX4gbG5DAAAA:8 a=8-yduQQsOBGYcPy-76YA:9 a=QEXdDO2ut3YA:10
 a=zZCYzV9kfG8A:10 a=324X-CrmTo6CU4MGRt3R:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: 2hikOfrgCrxn2ih0420G76zMk6BCkhsQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDA3MSBTYWx0ZWRfX2R+CB4N98bbp
 nCpyBrUZ3O0f4h+HCW4VbVepE0YdLB8eUwUkjVKDmR+v558piyFxcWsDLmmlzy8UKWhzDJ4mxAd
 xt5XnyOy84LzaibB+ssZwD6tpvY1mQvXMuGjdkQ1cp8bSYywhSIlGzl4hEHcY83lQfnunInAg/Q
 10C0FcPNS1XRXKvwm9w3zvtJnU93rC+8/xu7sxLVy2gaJE/CfkKmlz3jVdqGqbh5/7gjRti5d4O
 CwftfhEF0fLmEz0DRSjVPaqhd0MVfBbDoK+vZR5EBx+Bn0/wzd6397XoidKxPADOTYgdfwQ7t50
 Qxz8bbMAjyRBMV5xwIMozgxOp6vjX9EckytscXzvCUwpN0DVXFh3bsiuW95Du7a2yDldJu7VqKT
 y0xCK9vGKHkL6JlLNwa3UBy80i/HHsoAR9v6G1Bij8l0QfPzWEggC2A5MGTdNBdHOAMvOTeSJO0
 hdiycoZIK17GxFJyttg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120071
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,arndb.de,arm.com,rock-chips.com,gmail.com,linaro.org,ettus.com,broadcom.com,oss.qualcomm.com,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-274490-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,collabora.com:email,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shivendra.pratap@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3133926F37A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 11-03-2026 14:51, Sebastian Reichel wrote:
> Hi,
> 
> On Wed, Mar 04, 2026 at 11:33:01PM +0530, Shivendra Pratap wrote:
>> Devres APIs are intended for use in drivers, where the managed lifetime
>> of resources is tied directly to the driver attach/detach cycle. In
>> shared subsystem code, there is no guarantee that the subsystem
>> functions will only be called after a driver has been attached, nor that
>> they will not be referenced after the managed resources have been
>> released during driver detach.
>>
>> To ensure correct lifetime handling, avoid using devres-based
>> allocations in the reboot-mode and explicitly handle allocation and
>> cleanup of resources.
>>
>> Fixes: 4fcd504edbf7 ("power: reset: add reboot mode driver")
>> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
>> ---
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> The patch does not apply, though.

thanks. Will re-base it.

thanks,
Shivendra

