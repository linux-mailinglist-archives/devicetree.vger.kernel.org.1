Return-Path: <devicetree+bounces-234875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E88FFC31C0C
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 16:11:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AB2E94FFB22
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 15:02:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C89CA3385AC;
	Tue,  4 Nov 2025 14:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cIevfssQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YWVluKmZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55214332907
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762268316; cv=none; b=kqcsq07vcTT3msB8U3t2fOhB65D2XmuXt2iTnhzAWI24r1IUKRwPA3H/rFfceHxUkK7Ax7OlCUv+wG0Q8zIV9pg5ZUN1vMBZI4//tk+KsSblN27VErODQGS4CnfV+PtK5HJujv4sjUL3iWKS+SDs8tO38v6pZQySfk4uXqJhEZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762268316; c=relaxed/simple;
	bh=UWXnRIELy2WQt96jSHrYhMbGqGyPPSqNnNhK2I0eXJQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dr64eN8qEE9NT3xLRTRjBxrVazQobY5lkCwV2zED1+nbrWLOKDaml1yy1JsrBLWs83sRzyPSWKRgHzg0cbmRilL76wgrrDoGUIwS88iVwB+/734g8Yna2gbmKycQcgttIEiWB6q/xDNQGJvstzvmOUsoMnKSVHWg/tLC/OJoL9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cIevfssQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YWVluKmZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4Cg4cU1988259
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 14:58:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XU6Ehmk7tMO57YbmkIPe+IDBaadKcLopPQR+KEF5PvM=; b=cIevfssQS0bvbG5Q
	DI3cc+NGaBcDaLzv5s4p60JAJWBB6NpBBH/pCkmgDaBt16V0xvsMK68rUBd9BPSu
	Y0zeSYGO278oOz/Htk868kPuO3TZC8AzbuSLEk0OP6cxxlyDXTt2PdQIyMkpj7i+
	GDqumX1ij04PgOX2CY2D1OtPv4zicy/wGJdAGvxmhFEbS34hyYqkYBzdj7sHgbcg
	K0sIx5lNq/20NTICzppQLoJeV2A636er92mN5m0M35XXCTVxI6H9JB9Zwy2/E6Ng
	BR+gFPGT4aDxGe8M+BZqFkG9uvHY03QPc5nzS/60ENTeJpPy6hLmX+Q9R82vuXWv
	URrquA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7hbjrdp0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 14:58:33 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b184fa3ffbso24321085a.3
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 06:58:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762268312; x=1762873112; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XU6Ehmk7tMO57YbmkIPe+IDBaadKcLopPQR+KEF5PvM=;
        b=YWVluKmZE9Y5yeMqbj0A5mviQSl6vXsmVF+eJrcly3C5gREjpTcJ6KRUPiOJxV1kCF
         Hmyq/COWKgpBsVTpv3wrxgnUstjQPJiAALTOYTiEeDuKoUcp+wz7j0k/CE/xSjiThEmc
         EaTKtWeNSuzTsbrDWLRkuPrP/tM1IpBBWuLtpadOie2HSYK6xMgQUlCSyCS2U56ijkFb
         z1zADDjJIrrmVvPgAGh7Tibb3s29QQSCwc3MHGpJrygmV0Arw/Tex6aOSDoyavH32H5L
         I1eBxHkN3+EhoL7kwVWcqtR22A+TlSemEQq6etGntA1dxeyoUGaQ1g97H2RPaRwEFtnn
         jluQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762268312; x=1762873112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XU6Ehmk7tMO57YbmkIPe+IDBaadKcLopPQR+KEF5PvM=;
        b=cVq8HFkHnw1xWJNuVt9dEH4AFoUp7n7zHOdmdi6Qf3ebjE74RETWgfb8aRX9pu2DcY
         tPJ0AXhMHu5iuPNzHkj7pOP4FFTrBFVnAx0DPa/PHU50hkyA29CCSFtBBetuexpZUthw
         jBkN26kJnsUZI/DIsCN8s/D09dkyq0u6vvyDVrVGNKxX1q4hiKlhjGzKlNdbhUyZ12v1
         SSnR+SHmQKvA6Mu8BQb1qiNgO55ZHfjrHKFdYD9slDUY/Zp2jLbP+EyZ5rdgVCHOfg9i
         vJqFY+T67IRbtD1P/T/xSGSIccn9uFUdVhwg2mD/402wA5trXMm9Q2V7FyM4g+gl7YFq
         hZBw==
X-Forwarded-Encrypted: i=1; AJvYcCXLWEp6QHdnx+1f12RepkJZ/r4ojozY6+jVF8N1SibHbW7omCbsNyTeb4aE7rOQNipc91d1BWLEZI+2@vger.kernel.org
X-Gm-Message-State: AOJu0YzgIKj4EF5ri0vbBm88L0iDwiaj4L+L6A7kSCzBYu/fFsBJdl31
	hyJy0VS8DlwjGJVCh87HE6B3q51hVEMC/T7sp40mqCcyr07JCrHUEaw3gKBXmspbFFEI4ooiQU8
	ZrZ2TyFSAeUUe9G0vwDf0MdpfnHl1DiB3mhzSGFC2JDy7nCu9q2lrxFcB0i5wjCXe
X-Gm-Gg: ASbGncuL72uJtwvLCDLPSrhYU/LZt5XztHW5rqF8f7Vn459cjoaOfXNPPPnUXprkLHa
	J1y9/aTVgB2ealhHQaZW7ifLjLUiq8nLtpeJ7cIYGh6R5dMZi8Wbeph12d8QiwnScQsO4Y8UQNx
	MeVnrnToo0TPTcNiKN8yhdUxbuT/qvmrj15o+PZxXgoFHyOZ7iXkK9Nq+ICmjPbxlmADvRCzsJQ
	/NOp/K0V4UJoPyqp7eJdME/mybiQlAMPi+W1o4yKMMzfsosZYiM2DsDEWJi4H+qG3YFfMC06iQB
	W4adz9T5fcjeYwwbGHp4SF45nN8VWyqMlyK6xptPagVS2NAeeCogExjxR6eLIyp7XqqCp33w7PI
	KoJkJR233KEs/VHFFbIc7fvOusgmbV0PukmIDL6sVIzgFq0X8OhMxrx84
X-Received: by 2002:a05:620a:46a8:b0:8a3:d644:6930 with SMTP id af79cd13be357-8ab99979355mr1478799085a.5.1762268312309;
        Tue, 04 Nov 2025 06:58:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEmHPArzeeY6S6vA/qOz2t22T/NjXHvYbIKjw4w2P+c7dmzZPPCuH7Gx17ZDGuqAZsfcXpd8g==
X-Received: by 2002:a05:620a:46a8:b0:8a3:d644:6930 with SMTP id af79cd13be357-8ab99979355mr1478795585a.5.1762268311824;
        Tue, 04 Nov 2025 06:58:31 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723d3a3082sm230640666b.11.2025.11.04.06.58.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 06:58:31 -0800 (PST)
Message-ID: <9d80b581-5d3f-4b95-91e7-c73c113b0976@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 15:58:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: soc: qcom: Add qcom,kaanapali-imem
 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251102-knp-soc-binding-v3-0-11255ec4a535@oss.qualcomm.com>
 <20251102-knp-soc-binding-v3-1-11255ec4a535@oss.qualcomm.com>
 <20251104-glaring-rebel-pillbug-a467ca@kuoka>
 <790ca394-cee2-412b-97d8-c6416b843010@oss.qualcomm.com>
 <b6717831-1840-4b9a-aade-ab2248e3f75d@kernel.org>
 <9ee07db9-508e-4c08-8f79-6ccfd9b646ab@oss.qualcomm.com>
 <6af33c1b-5b95-4efc-b429-5bfb9ee7caeb@kernel.org>
 <8cf870a8-706d-4514-a87a-a69b64521ab5@oss.qualcomm.com>
 <f539b21b-cfe8-4055-9620-4d5d8d108098@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f539b21b-cfe8-4055-9620-4d5d8d108098@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Uv5u9uwB c=1 sm=1 tr=0 ts=690a1499 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=5iiKZxNyi93qT-c_jNQA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: aHAtN_IDhCC2ThPgJan1HEvtSIDWksvp
X-Proofpoint-GUID: aHAtN_IDhCC2ThPgJan1HEvtSIDWksvp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDEyNSBTYWx0ZWRfXw5SdrBNCRUYq
 0xuiBrjnydeJU4IewjRrdfeO8lgTQA5td0+5GtztM8//+KWUdVK2zSW1po/4eBKRRIE/808oB/1
 mgD1TeZ4DSVbAxvpkV+w2ITlU75gFl10hZQlTWUsaG2J+GZdrCrO40z8/4+Q8OhE7knsbujE21u
 GXPlaazXI9s/mXeNldP+DUJL5JrKYuqxKxP1vDjCSZ6MaEXQaHiurix7buzZcUB9HyymUz3yZcO
 trYZwIZshTiSL4QhwLNY2bijSXhtLPzezZBa+4AbgTJ4Czb+ksQQmJS2JuSxpGHZvXQa/xS/9g9
 GnTIobmeouX4ISs/3F3OuqSLVtWmcmaYTNsjq75q0+cArzHFypFs7onteZMt4F4P7RVTyi5bDiG
 H02KjYM/zh28blr63GFe4uIxiSBbDw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-04_01,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 priorityscore=1501 lowpriorityscore=0
 bulkscore=0 spamscore=0 clxscore=1015 adultscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040125

On 11/4/25 3:52 PM, Krzysztof Kozlowski wrote:
> On 04/11/2025 15:38, Konrad Dybcio wrote:
>> On 11/4/25 3:37 PM, Krzysztof Kozlowski wrote:
>>> On 04/11/2025 15:35, Konrad Dybcio wrote:
>>>> On 11/4/25 3:26 PM, Krzysztof Kozlowski wrote:
>>>>> This I got, but nothing here explains why you need generic compatible.
>>>>> To re-iterate: there was no generic compatible before, now there is.
>>>>> Writing bindings and numerous reviews from DT maintainers ask not to use
>>>>> generic compatibles.
>>>>
>>>> OK so let's not worry about a generic compatible. IMEM exists since
>>>> MSM8974 and it only had major hw updates with SM8550. They don't
>>>> impact the software interface though, so qcom,msm8974-imem is OK.
>>>>
>>>> There's a separate control/status register address space for each
>>>> instance of this IP (usually far apart from the actual SRAM pool),
>>>> which Linux doesn't have to care about.
>>>
>>> Just use qcom,kaanapali-imem - that's the first device here without syscons.
>>
>> So we don't want to move the existing ones over?
> 
> This was never discussed and this patch did not do it. You cannot move
> them, that's ABI.

I see, I implicitly assumed this would be a sweeping change.

So should the Kaanapali submitters simply send a version of this
patch with:

- oneOf:
  - const: qcom,kaanapali-imem
  - items:
    # existing big list

?

I'm not a huge fan of using kaanapali as the fallback-going-forward
since it's literally the newest platform on the shelves (or perhaps
not even on the shelves yet..) so it's going to look funny when
someone comes up with support for another 2013 soc.. but perhaps
that's just how things are supposed to be

Konrad

