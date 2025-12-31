Return-Path: <devicetree+bounces-250717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D7026CEB43E
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 05:59:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B0C4C3038297
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 04:57:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE98430FC2C;
	Wed, 31 Dec 2025 04:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CkwBUE7/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HwdBfMHN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1C530FC17
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767157069; cv=none; b=l70yEaL4vUq5AeKZRFnaTQ0mOrehTBQ0GKtWLOabi8L2mPtDCEAW2gNLjOjT3EIRlJh1aRoxYTVCqGRPcFYyf8TOUPTN3NQdZ3xwC2x7RpNM1kcvRz3Z8L/ADOu9dOGiFeBt5JiN7nv62CKr9/3YKh4ppu6fdLvqljXnX/0GqEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767157069; c=relaxed/simple;
	bh=11N6OQSNY0NxVICl7jq5B26SLD+8RpI05xpjBeX4ZA8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NYOgsGimcUmPVU0jNcHmdehpAjI/Om6SbufYR8mwBpmRbTM0BNJC7OEdetXgWKTjtIxZDu8iik008UxlilJGclE/JBlbNwmU95tkUq7xr4r/y7xZitWVx1tK5dfW9dByfSQc1+rr4lcdbFDAlEW32xculLxmQFBXvqFlThxQiZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CkwBUE7/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HwdBfMHN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV2nojP2670791
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:57:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aQSxS2/0ehc5s3u7Quzvg5mR1THJreuz1hnz19f3oio=; b=CkwBUE7/Pv+MF65J
	zy9GbRmhNWAr0rQlgVE0atsSuxNp7QNySBupzf0tcRChIsLpUlh7cDPQN40di3Rv
	0YR9WI4NXk8ejojJQCJKR6SkMnBOtZmJvyy8hJN+1jwgsbiXxi1S507uoUNthhvd
	VKlyVj3snxXAfPS6OsVdfsxLNHK5l8X8tl3/bRFooNKv4A9CfUD1j3oO2e2o8LhD
	Np0gZB5zQPVu+emUxHo3Re+b1PSRINW0ROSYupWim1CQdS3UCEimhV3alUjV6Q+S
	mtoOqxzL3FO9bhcdqQJanEl+YWhSGbhgcjdyJdXEPvEJmRzoY9c+5cFeisA81SlX
	bkEcsw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc4fcu61g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 04:57:46 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c7d0c5ed2so10975184a91.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 20:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767157066; x=1767761866; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aQSxS2/0ehc5s3u7Quzvg5mR1THJreuz1hnz19f3oio=;
        b=HwdBfMHNgOg9ltd3PjKl5PeMs8oPJvEQpLnJUqN4m5noebtujgyQlUzlsiPL9qJjas
         meiLJNexnwO2RwRPC+mdhCG7Q6ERgAJMas7P/esynV36f+xILSZUJZKE0M679U1W8nFx
         PvFGeYsX2r5o58w5uCSNkE8xE06KUBWmIfq1XlpPg7uJMqnrwnqwlWMWvw/hK+quBqv3
         9eptOBSSw8gqVZvr/ZILM8AKj9Ksq8YIl7hf8oYfcSqPmVOf8zmMd3xhVj84spb2q9YX
         dkpnLRce0KMwPOZq/uOx9DkITFIy65IBcwR7E1VL7JV/jVWUOWB5OW65YTZQ8Vc4WIyk
         RYlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767157066; x=1767761866;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aQSxS2/0ehc5s3u7Quzvg5mR1THJreuz1hnz19f3oio=;
        b=unGTvJ1sUiyxKLNHyjuE25hl1O/68MOcIDdpnlCGpZFSz46Ueunoe+7CgZ4X7LvAAn
         FOS6keiUcdz7nZOK0m+EjtN5w5J4ICm3vWJsNFwCvbDE4VQ/APdzEVlwE7Wl6RoHETZG
         7+zkn/F74KSq5/IsQpQ333dZKU5G0Xoh/dTTooFbYGOR9XhuhvLBap+sAqi/r+13SFDM
         /maAl20b8zYNiYqZ5mASbcTKAbSjv/Ef6bZtmx+KDGpb7KNsvl/AKatJLtDWwWb0Y4dC
         fCsR+lVyfA4QGiIsTGGhhbfDZRxEikSjqRVt+FqQAz+FNHxeM/pLJbsfNcdgMo+I5bin
         S78Q==
X-Forwarded-Encrypted: i=1; AJvYcCV0uYnN0zpGBlVbGAPzDLSzw1IQBlVjhqODlFyLobXTST+rswb7M4m++026Wi5RjxfCwE1mgwcK9N7V@vger.kernel.org
X-Gm-Message-State: AOJu0YwVSym9aKGcxiYuyizf/BSf5KFjRPSWq8Ob0teQGABTCH4Rgtmj
	18EtMcqvN2iSI3CSI44UMKxFj2+2TFLzkIAY70sG7QEZK+kpHWVkwbYKvxs1cw/ycyyTw4nUUrc
	ZaUagIKXezeiLt5isxw58Ox46pOohn48OHGsY1DMKoCgVcuSfVnpFSucHiij2DliU
X-Gm-Gg: AY/fxX7XVpI6mDdzeWeGwXGjrougJD2dbH29iVNB7DEFfk2mGJchdVHK4yJJM/zAA9/
	vyru4mP4SXqLJgQC0NFmqojojEuJHJeEjkMnU7uhWfFBXEhsLvelD1KxjP2xdsSvDHtt1CdhB8t
	DAY74oXbGs/EMqwQtzbLcgp8oEx6lGUscQbYDg1ktNWHVYEsrE6N5ZimpUIHk+t70F5GWjnk50K
	Ju0Ek/yoGVDXf/ObRHeyc8DYucTwJouYMkT0RvkD7UqMmnj5WPLrvrUVw+rCaSaZprdJ+DqS0cr
	+JeCaMCTSbW9AFZK2pFTZAE5JsxUmIepCmTPxaMOt8ZmEXmgJvk96XmflOgBZz6t/eMvCAlFWBs
	3VjE4yWuIX+/fLJQpqhOeFcZHpb6x/eYkr7xwseDn
X-Received: by 2002:a05:6a20:e210:b0:366:14af:9bda with SMTP id adf61e73a8af0-376aa6eadd7mr30887186637.80.1767157065634;
        Tue, 30 Dec 2025 20:57:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFAvdaLtynEVCgaHZvw4QTID0gtW8i8EGlr+lVjjbmIhEK3xWUmcfReZ38cA/yRJtjHo0R8EA==
X-Received: by 2002:a05:6a20:e210:b0:366:14af:9bda with SMTP id adf61e73a8af0-376aa6eadd7mr30887164637.80.1767157065180;
        Tue, 30 Dec 2025 20:57:45 -0800 (PST)
Received: from [192.168.29.239] ([49.37.133.221])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7c7263a3sm28803816a12.32.2025.12.30.20.57.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 20:57:44 -0800 (PST)
Message-ID: <c0e654d8-bb4a-4d4e-9d67-3664e6ea0aca@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 10:27:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 2/3] dt-bindings: ufs: Document bindings for SA8255P
 UFS Host Controller
To: Krzysztof Kozlowski <krzk@kernel.org>, mani@kernel.org,
        alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        anjana.hari@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251210155033.229051-1-ram.dwivedi@oss.qualcomm.com>
 <20251210155033.229051-3-ram.dwivedi@oss.qualcomm.com>
 <3813487a-4618-4c14-9536-cc9f721b12d1@kernel.org>
Content-Language: en-US
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
In-Reply-To: <3813487a-4618-4c14-9536-cc9f721b12d1@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: iXV33Ttz9UMtm2P_w5zn-LJyyAr-ye4i
X-Proofpoint-ORIG-GUID: iXV33Ttz9UMtm2P_w5zn-LJyyAr-ye4i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDAzOSBTYWx0ZWRfX0b8Elr/KsWWd
 rsf9cFVuew5sys+79zRjU8QTcF1YQYEb7OkouJ7JmTErVGYxP6Uk7NIlLNxqa/ctg1EBXvniINA
 RyfBZFunopJXkU6G+d9bLm5LqinF3rPqN92OKvIMnUzJ7YNlHsAA6PAh3OL0navytTtgdigSBwh
 OfztUfoRXHyv4ti0pOwMza1vBK8ksIB1Enc9MMI9/b2/C8HB4NyQELK3Mqaw9BnKpvBvWSu19dI
 Iowr9+YZ1gEGmCIfhgkpTEysTx7MI6RCQkFCtmgf8HLtG2dzW5MRtlsneEQ6SM6oXjIYLun3+j9
 lSMfUYU5Gf3/XcJFm14haBAg015tzmN1d8ZlobWIpdIhMTFsxxy03xzblJQcWxWbIXfFC6ILKE/
 8mYgc8SXLHU9jWi60GTTmzgUOjYaspStBUvUcATxolwHDeC0x/5BgsgzI8e6ltZF9leyw3ThNZv
 +J85U8WquBxA/4CAWVA==
X-Authority-Analysis: v=2.4 cv=foHRpV4f c=1 sm=1 tr=0 ts=6954ad4a cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=+/UKhaqxHMWBDOh8pPecxQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=2JRC5SQJVUo4JS4EESgA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310039



On 11-Dec-25 12:04 PM, Krzysztof Kozlowski wrote:
> On 10/12/2025 16:50, Ram Kumar Dwivedi wrote:
>> +
>> +allOf:
>> +  - $ref: ufs-common.yaml
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +    soc {
>> +        #address-cells = <2>;
>> +        #size-cells = <2>;
> 
> Not much improved... Same comments. And if you repeat "we plan" or
> "something else is something else" than answer will be the same - that
> something else does not matter and we do not care about plans.
> 
> By useless disagreements you just postpone the acceptance of this
> patchset. Especially about such nits... patch could have been reviewed
> already :/

Hi Krzysztof,

I have changed it to single-cell addressing in latest patchset.

Thanks,
Ram.




> 
>> +
>> +        ufshc@1d84000 {
>> +            compatible = "qcom,sa8255p-ufshc";
>> +            reg = <0x0 0x01d84000 0x0 0x3000>;
> 
> 
> Best regards,
> Krzysztof


