Return-Path: <devicetree+bounces-262761-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INLMBEKGg2llowMAu9opvQ
	(envelope-from <devicetree+bounces-262761-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:47:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E78CEEB226
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:47:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7360D300CA2A
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:47:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C24338E5FC;
	Wed,  4 Feb 2026 17:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ckXaoy2D";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bUYkhZjC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F8A354ACE
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 17:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770227251; cv=none; b=Y1sic76YbfD/JHub2YWhqonrMX1vZceKfDQXgQZ5ixg++psCwyoNQoNTI2PpFRUGkjODfAZkFtmGtJlQvGrhD0vS6F4cnMaFBgyOZ8uaG7X5760opUr2cYkxaayMIQgO6BCQ5JZYIkaLcxKLiXONELfYGQQS4EPHuKc6au0YnnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770227251; c=relaxed/simple;
	bh=g8RM2vwIi6tcLyL+RY72HKz7XXmLzmjYfq3YEA5pZ40=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dmE9CQfkMT+PhKMKXOb5erGkZIw15bQjL5Xsty6w8Lp0Hmr6wijxGmtnE351GhcR1LA1zb1dqX426FVIVyNmc//iuSSOgoezcY+ejjVPErX4MzBuaOGwYPTswurC+rZXSjGLSW5rT5r7WsY5PG3Wsflyx0zaPHYz9A+yoNTJVV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ckXaoy2D; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bUYkhZjC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CIZ6o899314
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 17:47:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cLvQK/2kpX2kTiIB1pSoUh+FsxfYH5bbkzIy62znZ6k=; b=ckXaoy2DWieXCbSL
	bN+j7yAqq1NR0LyzB/voOgBOKN+y1wE0+B6L1I1x+9t40HcGrAJnVc8wG/KZ/X7X
	5T1gQZAatxe/uPEl2HTHy6K23OqHTFsHc5sA2Ysl6/UywHRqWtqkXfH3/O0DLPQR
	S1FeH0vDd+5343vLVcas1MSvJ8GxxWhMEwPypisb1Uu36hVsHb1GL0jUP5QweSD8
	28ybjCBuzZNdK53AM2DKnrpgeAb/5X+0aapLBhIXcE7enJ6K1RQaU037B1GXKXGl
	X26XGhSeSo6v/5zoG9oZxaMjBZZi1bBfp3liTwMtp0urJQz2un5ejnL0umxxiIft
	MHWLaw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c445whdj3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 17:47:29 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-81d9b88caf2so78318b3a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770227249; x=1770832049; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cLvQK/2kpX2kTiIB1pSoUh+FsxfYH5bbkzIy62znZ6k=;
        b=bUYkhZjCtvpOQcu+dk7dqGPG1PsnptorpUt7PSAFaUZkY8ijE0w8Jinka/c8mavV6j
         6yLn7wMI3mIWuCMT3ghzzOWjqlKugE+dnVDr7f8mPW3uJWyl3UVvLPLlZYbzOgy9RDwT
         mzkIdcI9RoXOh1EJcyOZVzkHGO+NQqlOI75mmo01wX9ybmnYUGA2zWUiEd2kwbyWek6f
         mTbBATT5mityAFeBNqTBaO5+X+QYKSe5jDyNT7nYs/AS5e5Mb0IgyU3+PafqilvrvGf6
         4MgdXT6IVT1Ze6FpSjsgMxIR6NDrCV3X74Ow/Wf2KqVG1C09SGofMhW/ySyQriuYe9wH
         arUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770227249; x=1770832049;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cLvQK/2kpX2kTiIB1pSoUh+FsxfYH5bbkzIy62znZ6k=;
        b=IT3mg4BafrZa+Nzb6LlufepZeN7mhbKGXUALegBIBx6QQwyTC51ETpTP/hPw54OLG9
         7OWayU7udxmtUdotZxVX/245qEBlbIF2z85IgtGQx8p8/o1H3uG906GyOk9CY4jfOl0W
         7yYxkEh97xq1FZwem9Op1DJIUJBzRpOz259i36ApnnaKRMRrWVeMuUK1PjCIrK0LOF1T
         Ipjjju6+V6QcLnKyf5UiD7pdlguHc8qQilJRliTqg+s3kp872fX4QINTq8YJM6TFBplg
         kvDd6e91vz4cnkH2hNcNd5bSVcO5GJlnnrTB68C5TGvjzLd2FioxHx44HzqtiXO9qvbA
         nICA==
X-Forwarded-Encrypted: i=1; AJvYcCWZZIrQH2VYjGFp5dMCDjBWJpnFiJFiDT9Th3ry1I2ULj+qRVLn2pHZ5cWlSfLDjHgXKnpSMTxD0XXa@vger.kernel.org
X-Gm-Message-State: AOJu0YxE1fJY6xJLyUSDRUWNeWpPBIEA5SbDtgLjlKg9eFK7/gz+o5ut
	th2X5IaXb/zQI+HBoXwYDk9JyDuBoC76G5/U5vJrh1L6KaqCah/xz4L78iaU0ZEQitLN9l2Jg2T
	hvktbfvwhMrGspMF36sGyhkxetBOodzRmTQ9Y85NwuwcRwXHBXaiYuVF4+/zJpqAh
X-Gm-Gg: AZuq6aIG94i1ugSp2DnLySpovY9kJFX+WnuuU8LCwFL8yMkuX/E/rpsDVlCcaehvk89
	lIoyP5MptMUSl0g1u2Ocowaa04s5N2UkjXcOJtyVMXEuxVXRqCsI/f4nU2yEEsT03EgB2TUHMPo
	YwkvTOj5123enAqPQGJGrMzFtIXpKewpQZDXA8UHQteuT5TMP1Akv3YzjHYcY6dcOn7TyKRyTKg
	YqNVOMcl8e6OWLLGxvjwMT9Qb+VsIzllWNZ9L33cKSNE3NQovgDCgfIInjFj0ybe5xhogdj2CiA
	yWetBnOVssk6GiuDVv4WklYlKhKwAVWPFnd4YqsRnN+rjvsSgUvfupk+QTg5a7pkqQF1468YnEO
	Px8CuYwUZAvFvMHQKaxceT/bcmw8cr0NB9uKX4Adg5jNO
X-Received: by 2002:a05:6a00:140c:b0:822:d43a:103f with SMTP id d2e1a72fcca58-8241c68eed2mr3347144b3a.60.1770227248807;
        Wed, 04 Feb 2026 09:47:28 -0800 (PST)
X-Received: by 2002:a05:6a00:140c:b0:822:d43a:103f with SMTP id d2e1a72fcca58-8241c68eed2mr3347105b3a.60.1770227248309;
        Wed, 04 Feb 2026 09:47:28 -0800 (PST)
Received: from [192.168.0.103] ([124.123.178.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8241d1c0764sm3240359b3a.21.2026.02.04.09.47.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 09:47:27 -0800 (PST)
Message-ID: <34446054-bf8e-4644-97c9-161eb781ac20@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 23:17:19 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] clk: qcom: camcc-x1e80100: Add support for camera
 QDSS debug clocks
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-4-b23de57df5ba@oss.qualcomm.com>
 <jzg34rsfxoqsrwrkls5dd5l4zereziws2hdtkvotpogwmmbicw@ludqwpxbfp6n>
Content-Language: en-US
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
In-Reply-To: <jzg34rsfxoqsrwrkls5dd5l4zereziws2hdtkvotpogwmmbicw@ludqwpxbfp6n>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDEzNSBTYWx0ZWRfX4d4N0bqXdkMn
 /2xQ0DVNhnb7qEjjLOTzEHOyLdckBCPWrGjc63bthNQueg9+sWXfvbfTEH4P3LSsv8G4VEYwFGQ
 RVy7BJrcgQ5HSmNUmumvU2yNNqU9yu8hOjQ6HeKxvo8aSN+hV+OKVWRsIlWuAGVbfhAnIe3oePq
 i+9WuUZH+IiznK31X9zFwYOn3xi+SZaNIVZjHQgIGYJyvwmj/kov55/UD2WZww3xnsxR/erSYtI
 KxZQ3WNslmlFpV/1AHuDcT3/thZLBHrPTE+2mM3smacE/cjOV2MDsY5G7kP6QUlSitsSBMIwP2d
 trogkqyNQQonqF/jpFhWMLKWfwLy4re//3OrmrG8x0DGUfk6X/db3bUZWKBkAS+SYHDA0besNEp
 3+YQ5GrmWfirsU1BBw3UfmSmdeZjOKgzhfTzZljE0xZqixtwLDo5+67aJi5M2D1vTn2gHIuDkbC
 +IiuoL0GrcG/kYzeDuA==
X-Proofpoint-ORIG-GUID: sZVmBsJyU02dOE17Ehthr1ri_ls5VEG3
X-Authority-Analysis: v=2.4 cv=GvhPO01C c=1 sm=1 tr=0 ts=69838631 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=2H5/5ZkxJs/wMzWGxXwROQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=MxBCVv8FlqjcFzu5NPkA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: sZVmBsJyU02dOE17Ehthr1ri_ls5VEG3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_06,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602040135
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262761-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E78CEEB226
X-Rspamd-Action: no action



On 1/29/2026 6:08 AM, Dmitry Baryshkov wrote:
> On Wed, Jan 28, 2026 at 12:56:35AM +0530, Jagadeesh Kona wrote:
>> Add support for camera QDSS debug clocks on X1E80100 platform.
>>
>> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
>> ---
>>  drivers/clk/qcom/camcc-x1e80100.c | 64 +++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 64 insertions(+)
> 
> My memory might be wrong, but wasn't there an issue with those clocks
> being not available by default?
> 

The camera qdss debug clocks are being modelled in all recent chipsets and I think
only some specific camera usecases require these clocks. Hence added support for
these clocks on Hamoa also.

Thanks,
Jagadeesh

