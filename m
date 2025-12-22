Return-Path: <devicetree+bounces-248715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 615C4CD53ED
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:08:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B1147300F174
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA03F30DD11;
	Mon, 22 Dec 2025 09:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="okPfP1sF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WnyhTMLf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2AD1F1932
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766394520; cv=none; b=o/qocC0+qXv3haH6q6654VGLHywfb7DXgtXASdWPvRwJoT2XpSWS3eP2iGsk++X4yXg+Qf7gzXvGCC5o4d49FWpGPsxln2nDmOVjC0tuMhNnJC3SvVIoqDly/P+8zCIZ8MLqxZXJlJxt1sMTzr/bXWt+O22gXQfrXsaj7luNInQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766394520; c=relaxed/simple;
	bh=wqfHKF6dniolNGCUkXSyAbZM018zG3vBScGSPocyyWg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YBebzc1qPY5URhrclF6lLPiiEfWwYUim2GrZ+jCdOJuMhk9u+vmPeBWsiiTcL+HUQeDLgmAM4801uDfKB+dg1x3yT6p7+OikRzrIyzYvFwBl69FoyKci3YVO5UF08PyaVegFMdI7GPFxJ3flRSO9wnfcJHCcs6oRF7scjEAsmZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=okPfP1sF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WnyhTMLf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM8ZNT63965513
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:08:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NMF7/7ba2tMpgWwab2kQ9bTMRzziaxOCdiu3Y60sfW8=; b=okPfP1sF0b4HyjRa
	3BH/WDOLCqJAVqhjsI5Z7mz65JSFkSfCf4qUjOSSY3FMs1oLCI/ULMV8EkQcdKMU
	uKPgRUeFjA3a2KgQMNjfJJ86WbL+d4NYyBgEFgJ+1XtEDA67Z+QexqufdsCGkrXt
	xhPpfmMxAzzpBnK/TF7giM/5DI5XT3koK7HvJ3ePUIyfqf9M3faHRhhn/O0UPEUl
	FD/wYwyQ0jDDcjGBg4kctq1XW74lJhjSlW1QGzkA9fCYL6odpfrKtV2WMHaJ7rar
	DKEwH3AlfccgCWbi/diOTE7IAnEEnXSgzVxvJYv3FDbGEADzLVCydo5URGVs20xh
	MkQPKQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mry4cm0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:08:36 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29f2381ea85so82182265ad.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 01:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766394516; x=1766999316; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NMF7/7ba2tMpgWwab2kQ9bTMRzziaxOCdiu3Y60sfW8=;
        b=WnyhTMLfMsResRnj7xQ1MaXY1+YQXLGytdTlEBLhzY00c/Qw82lIA4s1ZugPrT/LMN
         cakxXuzD92lW0slPx3Bs8LcPtRRWxeZ3hdCo5EAHb6E0moIUOvGO+XuzT3jKfyiCfEWR
         yNiQSRg4BcssaT/BGiFmw+O1bwCPkgDhgki64P5pPYcyBIdPAtVbu3QHYOIxmquyOggT
         BP92epa6gMSVucTli57QYhlaOS17OoZpLnrERb8DRxCfMQZamoHDpBZ3ZLqv9s/cDcmh
         cYRNycCZxU5w9OLmqwONFdWlXcWIWWkcUGW2Q2IVUr9zmcRqS1EHq6XdB2C0Y+BkmjEX
         vRzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766394516; x=1766999316;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NMF7/7ba2tMpgWwab2kQ9bTMRzziaxOCdiu3Y60sfW8=;
        b=RVm+0cMQh6+/ZmZi2e43gq9MYY6qkFw098+49jmN8m6rb0MPjH5ShlCKvbgeN2XEIq
         ofufnTvwMi74xUwdMPO9cN8olKvNTm+moDOC00QjNcsZdlSYnz2w0RMLhBsL67tEwwMP
         e8IPrlHaF1pZ31Dcx8iBpxQNJbG3DC6IzDyvW9d7Hm5UywCHAajv1dNYmOKLULwQHYky
         PRZhgPqVRWZiQxRTtwALEaxmtBO371nPOKRod5nH/PtUGjlPSTbwnfhbnOVWjx5+54h9
         2dm7mxlyq1Nk+g2aAh3wldG0tpTmfl8zbaqySpPtbeNQ4CAZ3KhE40yWycr7FUGtdWdA
         hHiw==
X-Forwarded-Encrypted: i=1; AJvYcCX1SbAMwYo4VRCmcqO1brCcqFzshpN504aEy6ltNK+wESjjlhh+wkGXeF3HFytsTHd9EEVqdFFDfQoM@vger.kernel.org
X-Gm-Message-State: AOJu0YxeSrLCPlsJmsXAaO8IU2qkWVmJcdkjUpwfmiO2uM0/Wp4GlOsM
	9WYw8I/G+a/lldgQGXSWJ4XsaBfqIW7rBSlOWoE264lV/RQoxaN/mC4oQXejHCnpr1LA9DcbDtW
	6QqenVDvy87+N9k9QQHO3n9DBHm3fCOrl+VSOTU51dyMhyykSPO3sMS6OD3xUtMK+
X-Gm-Gg: AY/fxX5G8aEBDk5+KUHSPtdqWJPzTESOV2myk0CKGuTDS6V307NA2cNBN8asX45XCVi
	wbwkGMQOj77E92Bs2yOsbfIkk559PLMj6LKG2Oo0PNFiVi2edm1gDboEDyqBrbIOfno4umi6ziX
	c/JfhMDUbD4+NEK/9a80HHJ6gsvKHJlRXNqQfgm5GraJN/SvRtsu1qGxXW9Mveu8fhRLAdykY+r
	brloAY3djP7u2UuazFdH3Fg4PmQUlMRjOMt2xlgd95FoANbWBOPZ2Hn0FT45tB8PJlSozOBggiV
	McrAPxFuUpLg0a7j9SrRmuSyLqKxU0/DSPO4iq56rdAgd0jPrm+APCpSCs5lYFU6EyN/GuKxqnv
	SwJYQaPFHPL5+o1+F7IC2VbkwklUro4rDDWuPhSknOw==
X-Received: by 2002:a05:6a20:e290:b0:364:13c3:3dd0 with SMTP id adf61e73a8af0-376a8eb6c35mr10547160637.36.1766394515795;
        Mon, 22 Dec 2025 01:08:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHl6B6o/j2hlUuO96VKa8xLDI3u56QgD3CAMpPMvZyXFrZI8ZfnFJrUAexsmLszQmxJCGIrWg==
X-Received: by 2002:a05:6a20:e290:b0:364:13c3:3dd0 with SMTP id adf61e73a8af0-376a8eb6c35mr10547120637.36.1766394515234;
        Mon, 22 Dec 2025 01:08:35 -0800 (PST)
Received: from [10.204.86.173] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7cbfa619sm8650695a12.36.2025.12.22.01.08.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 01:08:34 -0800 (PST)
Message-ID: <b3d2c54d-f2ea-420a-b7f3-b9e60a96a841@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 14:38:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/4] dt-bindings: misc: qcom,fastrpc: Add compatible
 for Kaanapali
To: Rob Herring <robh@kernel.org>
Cc: kpallavi@qti.qualcomm.com, srini@kernel.org, amahesh@qti.qualcomm.com,
        arnd@arndb.de, gregkh@linuxfoundation.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_bkumar@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, linux-kernel@vger.kernel.org,
        quic_chennak@quicinc.com, dri-devel@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        jingyi.wang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        ktadakam@qti.qualcomm.com
References: <20251211100933.1285093-1-kumari.pallavi@oss.qualcomm.com>
 <20251211100933.1285093-2-kumari.pallavi@oss.qualcomm.com>
 <20251211154139.GA1424272-robh@kernel.org>
Content-Language: en-US
From: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
In-Reply-To: <20251211154139.GA1424272-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=cbbfb3DM c=1 sm=1 tr=0 ts=69490a94 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Gr6j673y5SSln3Ut_ogA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA4MiBTYWx0ZWRfX7ESJIbl3czli
 0eXLs2pP7gyu5QCLd73BVUuF6uu4OjRgG0I3VFXLTVkQ6IkHFcAYFfGaVbkEkjl9RIHpXie8AXv
 iR3GAPKP9EnwP6V2ctc/M6jEcq8HSbnZnGe7ggBWyBFrHpoMsziTklH/XBec64qBlm2FZD+96Q3
 ov4TZIARKXWhpGlSNQYciVrg1kC91IM7pmKShodROcKnr4+LspygjhCxfOMb4Yl0KzqUyX0na8l
 cmu0BdAw+UorqmgG8yT2zx5JHYXKtgaVmQWHsuyGrjnWktE4yM26W4qM+4NgndEFkBl0F/Gbwal
 t6gTs/kSlFNqC9axUsbpJcqA579xM0kWWFYcX2HdeSvisqvhY49TVS7UuG3YEoUKHlzeiB82TAL
 t0paxC32+SDD9MYCuXbmEIsEgrO7BTgYVVpJzd/CflQ/XOpgnttK5b73Mr9DtWUIbFbPH7i43Ra
 z/AI6NKk5v1vtukQxPg==
X-Proofpoint-GUID: HWxjpyf_xL3sZolryIEj8G_NdesVwlYS
X-Proofpoint-ORIG-GUID: HWxjpyf_xL3sZolryIEj8G_NdesVwlYS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220082



On 12/11/2025 9:11 PM, Rob Herring wrote:
> On Thu, Dec 11, 2025 at 03:39:30PM +0530, Kumari Pallavi wrote:
>> Kaanapali introduces changes in DSP IOVA layout and CDSP DMA addressing
>> that differ from previous SoCs. The SID field moves within the physical
>> address, and CDSP now supports a wider DMA range, requiring updated
>> sid_pos and DMA mask handling in the driver.
>>
>> Signed-off-by: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml | 7 ++++++-
>>   1 file changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
>> index 3f6199fc9ae6..142309e2c656 100644
>> --- a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
>> +++ b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
>> @@ -18,7 +18,12 @@ description: |
>>   
>>   properties:
>>     compatible:
>> -    const: qcom,fastrpc
>> +    oneOf:
>> +      - items:
>> +          - enum:
>> +              - qcom,kaanapali-fastrpc
>> +          - const: qcom,fastrpc
> 
> Does the driver work at all on this platform without the changes in this
> series? If not, then it is not compatible with "qcom,fastrpc" as you
> say here.
> 

Thanks for the clarification
No, it doesn't work on kaanapali without this patch series
I have updated the bindings accordingly to allow
either "qcom,kaanapali-fastrpc" for Kaanapali or "qcom,fastrpc"
for older platforms

properties:
   compatible:
     enum:
       - qcom,kaanapali-fastrpc
       - qcom,fastrpc

Regards,
Pallavi

> Rob


