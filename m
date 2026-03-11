Return-Path: <devicetree+bounces-274099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCz4A8hrsWkuvAIAu9opvQ
	(envelope-from <devicetree+bounces-274099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:19:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F916264504
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:19:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 061B6301C553
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4D6D30EF94;
	Wed, 11 Mar 2026 13:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="au8FQbl2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K/WcocyP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62FD2F12A5
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773235141; cv=none; b=uBcxYpfH3T+3x1jiW+1wGeGI+nplZhowC0zZu7gY0Wx7sPSJVJbJa6uDoHpxNxgc38kmRs9DNXd186ZP4IhfrcWkKRcNtXF7ajZHW88li0b7lX37c0sW+VRpc5CWsgejd95YyAxoGDp/ohLx21xwTTQEGpMr0ZJg6zOU3VQNLN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773235141; c=relaxed/simple;
	bh=up6tB7Ez5pD/diJjTrqZAIDYC70qJs8r98DmPwTxwgE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DlM0UdPo+sJ1whk7E7MemgHJO0DuoGL0GTA8o0jQ2wRzNMwseXMpK3nFkAwRWwYhGky17Jiv/CQohkInbnlGOgYbzl0mNoGWjr0mWWAbJeeVSPajgzMnAx3LRukD27yWOZWWzhwrYgh1HmggoOkTT4VT3SWzG9D/KX8+Z7Y9RFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=au8FQbl2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K/WcocyP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BCtLBq2030825
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:19:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hdC4EqaPGJ8FczoB8g45Qjit9jp0+KUk2mHc/9qscNA=; b=au8FQbl2vjTgesTF
	WCfjWaLFnqos7TzkVHEihMYDr9l9lBCpAs5uC49z6Okvq+bDTH4WGWAzgO4Mf3WP
	aT30ZFFNiq1J5JdDx/z7Tv2j4ZduMN1F0DRkUIMRt5Ni4XvWsNFGPt1kdEsyXjje
	vBlYnsYdc3RSf3Gxjg2B968eI38PLP/0eGvPYi8abCvu2b1BGWIM3jwOQq16dfLr
	5kTXubKIEJhy0IBTtmcBCkyF5ZyWGH4/C+mBoBm1otsI6hxkZoRuvUsNDSHXwymk
	Fr7Bjspm0UPlzfctxtSj4VGRZAsm0U7byvq6DABi0D28ZQb5tQdBKAY3X2TPR/dY
	6MIypA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu40h19vx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:18:59 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5091eadc373so18722281cf.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773235139; x=1773839939; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hdC4EqaPGJ8FczoB8g45Qjit9jp0+KUk2mHc/9qscNA=;
        b=K/WcocyPjDXXwRgoPlvVgq8PROe/Z04X0lpCGAmVBgR94Q5llFFG1an0gXBvCtQlXT
         iWiOpFn33tpbKBPx0WF+v4ImS1/vgXq+ynmG4POWkAQHbT/43JZU2mZLqKoTTWXDTHec
         i/eEL605S+xnp+Ay99EJ3d+9yo6fDxPqGPrSwKI9M7vZ6cOa7JC8P4G8ccdIk+x2D23y
         UR3DP/I6x5HihdcNYLK7NPEMn78mzJs70E1FmZ42CO1+5pOZxMXT3Vugf5nj9YTq1ikV
         fgrTbSodlo3cz/FA17pAZkSKA0Q0e4IgUPAyH58Pph985Jpb759s8NopIye/XN7EIZWp
         ak3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773235139; x=1773839939;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hdC4EqaPGJ8FczoB8g45Qjit9jp0+KUk2mHc/9qscNA=;
        b=HtxchGNvM8sW6fPXwF0ZsltW6PmXrtaJp0N6taLhkfb6FHfsZ5DDxRNPs1WVoMcXOD
         OIzJUU4qioQNGaLL8OoYrkZI1jRvBd20/SXgiS7EOdZo37DpzW6tIy1tMl3dMtXWEb6m
         yextumlsD/GAMV4Q1/WvWr3jJPb71lQ9Bz8jujFHkt+ZFwTNZ1UruTRtac4jYTkVikeL
         dGq0CeE3aQy9ishMTnvexUnIyZVzTE4EyTrGTt8UcYQ9H3D3ZUlRraDTMX/2Q3VH08ST
         jwJ0U1O4sjv/HVCuKOx2q+xN8L+BLgALAim/wosbE7/S1htckkHAFH+EWINTJvgaYVku
         bR4g==
X-Forwarded-Encrypted: i=1; AJvYcCUK2p3CEPeK3rcFRyIpxcMZC7+hvfYu+dVJyW2+aW/rdMXF3Vro69nBGog94lRazgPrWM9tkouF5Ib3@vger.kernel.org
X-Gm-Message-State: AOJu0YwOvM+PbRTbfhtzd70JyieuuUqH7Eg9INdCTJR50OsDGXTQ704S
	5FvIIZquqy1lp8mTTwolch0XZFl4zTJy573e26A3hgJNgC/yuCY6+pnnLUpSlOvpyfu4rZ9gdTP
	PNOQIIhWFh1sqAXw/4l3C+HG7GYGD/VL/+tIOEN+vEXmMTA7NPsPIwjGiZgKn8Gvy
X-Gm-Gg: ATEYQzz0RUiMVxhUIdpLmLkIH7ILI+Gmh49eOfUzJxHEKsfvb4nTanHUqLneZ5UO2Dg
	frUZFp8zdGqnYMMD1GlGygiqYLrD+Kwt1tgH5G7Tai7ivdeUWZrvhhL8H5p+ZtTHxvl5YR9WON4
	jAoK9JXyXyKk1yLJIvXKYHH5yAjTxOp4CMkNN0tKw4bpyIchyz63eP40/sGXvp/F1lAUmpn8RaU
	0ej9ZtdFIroERQeF2B2BExx4chwW4YzTho4cj+c9WT9RKvgK/4qoQtoWVdMb2S2IT5qVw8YMpTs
	RWmBCFx4LXsZMOdQycNLQPHCgL/gfNthR03MyjtYtpX2Q97WWEjR//YWhst9fWJXpEaPweRp4+y
	6EPQJLOwxKWw/TPr88OOZXyieNBFk37byfUiqr4GtpY/Q+GSHDku141aq43UoI7akj3WtQB0h9O
	2tTVc=
X-Received: by 2002:a05:620a:31a5:b0:8cd:9828:a7b4 with SMTP id af79cd13be357-8cda1a84b30mr256498485a.9.1773235138934;
        Wed, 11 Mar 2026 06:18:58 -0700 (PDT)
X-Received: by 2002:a05:620a:31a5:b0:8cd:9828:a7b4 with SMTP id af79cd13be357-8cda1a84b30mr256495185a.9.1773235138501;
        Wed, 11 Mar 2026 06:18:58 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b972e18e238sm54861266b.48.2026.03.11.06.18.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 06:18:52 -0700 (PDT)
Message-ID: <c3b1191c-e705-4a93-946b-0303c927045c@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 14:18:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] i2c: qcom-cci: Add DT property for SCL clock
 stretching
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, ckeitz@amazon.com,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>
Cc: Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260305-cci-scl-stretch-v1-0-8412abc65745@amazon.com>
 <CAFEp6-3ZuSOW4apj2Ww2DJ5_5Gw-CDXV_9Qc2=wW-JLP8Vbatg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAFEp6-3ZuSOW4apj2Ww2DJ5_5Gw-CDXV_9Qc2=wW-JLP8Vbatg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDExMiBTYWx0ZWRfXw00jZNabDuIY
 KGSJ5OVWFXp0jykl/noJDxTA2OBbkgA29FqsJlTKYfRK+mMO5AsVuc+bg5k0GyiZiP2gnIY5fiA
 QeT/eoZZd/I0K28ZA085T8g3SaJ5a+NPGAbD1u25bRAR1X1U+0/r8oSuj4ysx1O7sFTyNUM9Qx8
 BPRs1x+mrXxzkYcI55eHS5kFUQjI7mdQIalVd2D92tT2VDesGAdoh4FOsNZW9Auj5ciYaeWoXv+
 jVm5n5nd4Yp0U+Ep571ptCSzNSJAoeFtWSStZMW5nmXxLG952pnU9tlRuDMiyNRe6pUtKXnqOA8
 HbimC0gNEQkTrK2TCjk9EPT6k1BVjO8z5uojQA3oUeKUBp5ckxuCHG/vUWGE3wkix+lMDFJVswz
 19ZkHhnDxowEPwr1rUYKKvP8YwTsgtT1D2Ua3mPbgPrOvExAsko/kyg1xrb9GJQ9GTS0iCSd+p5
 xW8ffGr8p2J2gK0Fpbw==
X-Proofpoint-ORIG-GUID: fEyAeVgyth_8-_qAglMoTSehaNaynzE_
X-Authority-Analysis: v=2.4 cv=YJ+SCBGx c=1 sm=1 tr=0 ts=69b16bc3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=p0SCdqENNPgbPqcv8GAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: fEyAeVgyth_8-_qAglMoTSehaNaynzE_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0
 spamscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110112
X-Rspamd-Queue-Id: 8F916264504
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-274099-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/5/26 4:16 PM, Loic Poulain wrote:
> Hi Cory,
> 
> On Thu, Mar 5, 2026 at 3:40 PM Cory Keitz via B4 Relay
> <devnull+ckeitz.amazon.com@kernel.org> wrote:
>>
>> The Qualcomm CCI I2C controller has an SCL clock stretch enable bit in
>> the MISC_CTL register. Currently the driver hardcodes this off in
>> per-SoC hw_params tables, with no way to enable it from the device tree
>> on a per-master basis.
>>
>> Clock stretching is required for GMSL configurations where the
>> deserializer uses it to absorb the latency imposed by forwarding I2C
>> transactions across the serial link. Without it, the CCI master exhibits
>> intermittent transaction failure.
>>
>> This series adds a "qcom,scl-stretch-enable" boolean DT property to
>> individual CCI i2c-bus sub-nodes. The property ORs with the existing
>> hw_params default so it is purely additive and does not affect masters
>> that do not set it.
>>
>> Tested on sa8775p using the qcom,sm8250-cci compatible string with two
>> CCI buses connected to one max96724/max96717 GMSL2 pair each. Enabling
>> this property eliminated intermittent NACK errors during serializer
>> and/or deserializer probe.
> 
> I'm not convinced this kind of hardware behaviour belongs in
> devicetree. As far as I understand, clock stretching is part of the
> I2C specification, and slaves are allowed to use it whenever they need
> additional time. Masters are therefore expected to tolerate
> stretching. Given that, why not enable it unconditionally in the
> driver? Is there any downside to doing so?

+Mukesh may be able to help

Konrad

