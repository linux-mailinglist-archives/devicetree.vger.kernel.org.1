Return-Path: <devicetree+bounces-261723-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHU5Bjh7gGnE8wIAu9opvQ
	(envelope-from <devicetree+bounces-261723-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:23:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A72FCAD3C
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 11:23:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7324830247FE
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 10:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02A30357721;
	Mon,  2 Feb 2026 10:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ju9C52UE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="adybnmcX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94A6233A029
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 10:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770027582; cv=none; b=i5RVSLcKnoo/aWhcadp/xn4EYaXHGbmfjg295ab9lB5Fjd5gzfnYF3mNI4MXpXv4Xd38HjFjzbVcMZGQfTBiQSzszg61hJRT3tTtFGvSvD5sKK2LlLMcnqfguABAvFfnYSjqkh0pbaJ32twr0BQdk80pruqI4TMpKsCX12zCjls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770027582; c=relaxed/simple;
	bh=Q5S+eZyNIdwCwug/VWZTnTNBY6H5mYjm23B+aZSiTjo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EjK4CrUjX+sfuDbWdJpRrQZYCYNiMxTt9kQE/wT48E8HTrJNVIoKnOVeek3mb9qcS/9eddDZojZfB16UslnBuSudrJvKTqO9LAMbGVau5n7RquL2qJBYeElFmBpLTpTqSZKlnFUbzs/4sCaX1o/IKe4aqMwuV96pk6nTPWBqk3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ju9C52UE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=adybnmcX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61285Hap1819670
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 10:19:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7K8yMMMnoWnA+M65AIQlB2vZJmr3ueYjTb6rPsykpro=; b=Ju9C52UEDu4Z1GA6
	Wqpbdrg4K3F9uEIjjLtEV/JECNNTLGII5DiI/Lys1b4ZMl7I/GHPu96VKbeoQVS1
	2OaWGvx4dxu7E3NpVgcq0fT+fPHBhM/YYlGUF81Zl5EwT6balJj124ouPCnU1tKJ
	i/ZpMAwSu9b3VWyeTGlc656SwayBBdxCD1bfQMffJl3okQxaAX68iTp0P6Pxf6Jq
	OV6Zd+5SMNtku6fvIa8DeMdHWR3N6IFRDUPrM9i4mA+8xYRMo9Rf2dGy1paOXLBF
	TBEYZmm4ue91YUe4SP48y+cKqqP/UCCmbn34Hqnt0IQOlG0aqAI0m1HFrvNFOGqM
	GUhguQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1avnn1ty-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 10:19:40 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6de73fab8so119717385a.3
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 02:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770027580; x=1770632380; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7K8yMMMnoWnA+M65AIQlB2vZJmr3ueYjTb6rPsykpro=;
        b=adybnmcX960dzUtuUl7N90q1Q6vRnkb68c9n5PaHyFwicS55ROdW0ZfiRFetZkUse5
         mdyBOHa6C7+G+04LPeOcjCJCNYKSJQV1VLUc2nuRdSXRcwqoaOKX7AoGJqpus3GS/m8+
         ho22CzJX2fIEj7SagBSa4/MM6TGjs0y2w6Y6q02BBXP2RziYQqtV67Ilim8saG0R3VM5
         gJLk9jgbGUq/Z7OxzCeTUyRy8IaTHWp7yZ/nAlmfUHvEinpgc/KAl88lB7apO4WvEL0v
         09Do/xGR6/g32LO5Ds4YJVUyHJt4SSSXwpDkB9gLajKlQJrLK/UNZqx3AfJQEfHF4ijb
         1nqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770027580; x=1770632380;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7K8yMMMnoWnA+M65AIQlB2vZJmr3ueYjTb6rPsykpro=;
        b=azGMB+Uqq1+r2Ie4Pb9xLnIqvThuIE6/21LCFw652Vdx2oa3/GEKv7opwA0SQRtctY
         9QQnRw+wgXL554riJ4i99Tuu6DnIqWJY/yq01huhHYsRHXyuYS9NHm+x1CbBFJp7Z9AA
         KrwjJtK09MnxXTyS4gPYNKDX9JEdO7OGZYweqIlGZ7RmGAfN79idyB5pu23XbKMIZovZ
         kJ4bBs1B+PYnSs6LTEGgy4NsYdCsNVxvYemqXrD8HV+n7WxpypIuTY9oM+fL7TmuWFDe
         gDBwFMhhCuwu89qD/AN6d1EEnbbMKFiQ7L0x6DB3VLV0DxW4zyW+I6epFc77C4glhruP
         QD4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVq0lZ4ujers+Vbax9s0SjZyAoSpinhbboErgodOOwMuLHv6tTjJE1RHP1gOaor4FRExonSDw/G8f3c@vger.kernel.org
X-Gm-Message-State: AOJu0Yxh5xgNKkQ3KnwgjDe8mo155gUmwmdEaf0Zbwz7V6JxXWHJg03H
	cyTA0Gwieiru/zh3jUPjXL8f7vUK6cLSI8Xy90TSut+fTjMjaxqQUOAIjfBs5IbC8dY5VH4DyyW
	ofQ5zkUnWUlxmPQgvqTKhbDG8DBMPGtLsMppe6nudcIC3LTwIl6E44Jn0fkuup17E
X-Gm-Gg: AZuq6aLaaC5heNVD84oYwqYGtUwXGuP62UcVw/dDwLoAEWs4ZbO8hOQFNceq5gOdPLF
	9lcURgVQk4/nGaGqmx2FxwO2w60oISu9N2Vl07LgzPZI2i3eHuA6P1qKrJ6YSR3Qwv6Wca97ctm
	nypgPjEPj7CIMACiJzE8ygwKtKtX6iG9iQ+wMwMaZyRYxgxfGx5un5J9mZEbPVIiROVXj+uYluZ
	5Pk8vZHJxItiDTx7yvzNL+eZYwf3UnT2Xl5JEqKGtWPwIQ0hfWr73YCJXaIrVMZKsw8oeTbf2yH
	HzYvrOms+ogH3FGU1Y/rDs+PnnCqVYaNiZ5QgEZeuxVvIUt9g9gtvG4+c13U3FHhIEzEQ/p1Jif
	kc7pzgmJkwwgPjwc/la74x3fUjbrXcsJHVwH2Ig/9mFwvQPHmKCYcZShqid5/ZFKZkjk=
X-Received: by 2002:a05:620a:40c8:b0:8c6:f997:d6d1 with SMTP id af79cd13be357-8c9eb325aaemr1163987685a.8.1770027579922;
        Mon, 02 Feb 2026 02:19:39 -0800 (PST)
X-Received: by 2002:a05:620a:40c8:b0:8c6:f997:d6d1 with SMTP id af79cd13be357-8c9eb325aaemr1163985385a.8.1770027579526;
        Mon, 02 Feb 2026 02:19:39 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dd99188adsm715942266b.50.2026.02.02.02.19.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 02:19:38 -0800 (PST)
Message-ID: <34fa533c-b9ab-4025-b9ad-4041837e790c@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 11:19:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] Input: aw86938 - add driver for Awinic AW86938
To: Luca Weiss <luca.weiss@fairphone.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20260128-aw86938-driver-v2-0-b51ee086aaf5@fairphone.com>
 <20260128-aw86938-driver-v2-2-b51ee086aaf5@fairphone.com>
 <aX6whqw7XyaKMd9m@google.com>
 <472d7db3-db34-4966-aa17-588e1153ba12@oss.qualcomm.com>
 <DG4EAYDXMGQS.2MKAJKDFQCFEG@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DG4EAYDXMGQS.2MKAJKDFQCFEG@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: MHVr3IDI7BSt5iFGFojihiD3n9wFyM5G
X-Authority-Analysis: v=2.4 cv=bPMb4f+Z c=1 sm=1 tr=0 ts=69807a3c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=hnEZpkAE9kI51XuuN3kA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: MHVr3IDI7BSt5iFGFojihiD3n9wFyM5G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4NSBTYWx0ZWRfX3cWuPn8cgEyg
 Y7gMuGH2LkrKkk1b4h2jXTQM2RupSwFD6MjD+RTEIMOsTpB/HRDXqHEl10ZT0EOnpG6SRPnrxut
 B7Rfh3vaYG0bmZdFRQmMZBmwG7+rWPOmro9gX4JvBagESnUhRY/wntARdZ1YkGJW96L/Y4BUNk7
 dreafPl01vBMaL0hZ/aCsd91//I7Q/jFp9RfjkBorLDhWTOz1QYtxpX6s/Vd47C+AFgxaGRyodd
 KsV6y5t4ntl73aZl8dTnxjA1vG5NRpCB1xjWBNsYsjXa6ZxPkSZXDzMcqIPJRGmr5o8JeH0lcQ0
 t/S4Ktq6xgfa+BUSJoV1HoUTOFcv5rvmu7T/tUHekWSKzzbR2zXHyarA96Q1piRhACg85tolOoT
 UQtqAAZM5jGq6s14qdByOkbIlAvuwCqZ03hMeendJjuGjzMiym39fq8NvO2IOpIIcVWkbiu/FPS
 t3KKqmmZxl8wjfhrwXQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020085
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261723-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[fairphone.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6A72FCAD3C
X-Rspamd-Action: no action

On 2/2/26 11:14 AM, Luca Weiss wrote:
> Hi Konrad,
> 
> On Mon Feb 2, 2026 at 11:12 AM CET, Konrad Dybcio wrote:
>> On 2/1/26 2:49 AM, Dmitry Torokhov wrote:
>>> Hi Griffin,
>>>
>>> On Wed, Jan 28, 2026 at 04:51:14PM +0100, Griffin Kroah-Hartman wrote:
>>>> @@ -717,9 +746,19 @@ static int aw86927_detect(struct aw86927_data *haptics)
>>>>  
>>>>  	chip_id = be16_to_cpu(read_buf);
>>>>  
>>>> -	if (chip_id != AW86927_CHIPID) {
>>>> -		dev_err(haptics->dev, "Unexpected CHIPID value 0x%x\n", chip_id);
>>>> -		return -ENODEV;
>>>> +	switch (haptics->model) {
>>>> +	case AW86927:
>>>> +		if (chip_id != AW86927_CHIPID) {
>>>> +			dev_err(haptics->dev, "Unexpected CHIPID value 0x%x\n", chip_id);
>>>> +			return -ENODEV;
>>>> +		}
>>>
>>> If we are able to query chip ID why do we need to have separate
>>> compatibles? I would define chip data structure with differences between
>>> variants and assign and use it instead of having separate compatible.
>>
>> dt-bindings guidelines explicitly call for this, a chipid comparison
>> then works as a safety net
> 
> Are you saying, that
> 
> 1. we should enforce dt-bindings == CHIP_ID (what's currently done)

This

> 
> or
> 
> 2. we should have both compatibles with no handling based on compatible,
>    but only use CHIP_ID at runtime to change behavior

This is spaghetti

Konrad

