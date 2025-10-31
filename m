Return-Path: <devicetree+bounces-233809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4DFC25BC7
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 16:03:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2C300407630
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 15:01:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05FE32D0606;
	Fri, 31 Oct 2025 14:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GaUlG7Kr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e4Y1UnDS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DB328725C
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 14:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761922286; cv=none; b=PAgBw2povRf19tRymYPTPxFzoxejWpaVLN1PyuqFToMGmmgz/BWKkr0f8gf3J63hXqiEDN6YKT4lJdJRwqE7cGD/pF1vo7OQJHlpVIuYoXWHfNbIVwIKs+hJj0IVnCkp/J+SkKsvm6HMfy6oaTmik2/AESj3lihAEmXADLVHHl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761922286; c=relaxed/simple;
	bh=6PvX3Mn7d/srGE8PUw02gWJHJ5kq5GVJeIMKoqGjFQM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QcwxO8rCDZPg2R6oMTWhIzcHb8bN6M3V0qk6HKM91MrbZGHA5vLAa1HiBWCpPwVYJ/yBlgprWKb+nMpPu1/7fv+c6IRgFneT0F4cMi9Pk7kP+QS3e04rxbIFO9BTSZEzIPPaF71ZUO2W/L4y2BmFAGCq5JD27l3tffqtFd/lKh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GaUlG7Kr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e4Y1UnDS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59VA3oGV2558792
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 14:51:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	25lyvdDjDQqOSKonxMTWI6lwYX4gVE6aW7eDSRoi110=; b=GaUlG7KrueyJWuCq
	5f9zW6Gud+VKZ+IJkUKnRo937G6LI+X81gYf2Cyb/V0bD447Kg8w4Do3eGMzdoGe
	iJmpTzlVcq+RrYRZxhXgJS0tWqGMXkZCEA65CNh1GDGZp7w2tTegDlvatCmhPfma
	HHf9vNJHG4W4+uFA3kirL6HMjm5zIa5R1YcUGd/+OTlVpLyiASjsSPE2lo87z/ZG
	xW9KLezygMeucGYWzkq96AhUOUP7DzD7zRwaEj4vhiovA+cDkB+4dST4A41IVbOy
	FpfDS9WcuGBq9/SKi/axPP954A925UzlGhiepuzXPkiIeUNyTBfBeD91b+iXtR5r
	cstiuQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4u1grqnn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 14:51:23 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8a5b03118f4so786435785a.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 07:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761922282; x=1762527082; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=25lyvdDjDQqOSKonxMTWI6lwYX4gVE6aW7eDSRoi110=;
        b=e4Y1UnDSAeeTDNQ9W4sq2A2TsM4lAqj3KT7Zvp9btPToM821C2iqbhV4Qwi+V6kgJb
         gHuB3+g1ZRgem1JQigdMoNv2YGxsNk+2/SGpMlI1TvVnJzHWVnXyIwtszhXqK1ReUfAn
         ZoQcu+PeRB1ILdaDBkmTdgnHcCViDll6Qp5Zz9ORnS0pb95S1WAwmm9hHqgKlBhlhnkh
         zzLk3AUWtA1Uc25M8doahEzpnOVvOwjiCWnZV+ZEMO9e4aNGsECPqRgnp3JvfRCbeBsM
         1+MIHFMF4hmeIPHrqCfDVpxN+txG28YmpXTmFxtTVFO0SpHMW891xVdptu1/pGXTikvI
         zGXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761922282; x=1762527082;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=25lyvdDjDQqOSKonxMTWI6lwYX4gVE6aW7eDSRoi110=;
        b=vxkb2l+1A6wh5UmRN72sn5w2RUmqfA+hgKnsGL9NaoqQZaOeg8pD7HXB1VKzVeGDsd
         1i3V6PGSfW3za1sx7pjPT1ijGH2l+wAnIiY0DIvtV74j2Q/NW1wNcmPeJ3tcnqMNq78s
         vBiwx3RDtwiV9vxV6jQJMcB3xn/0/gnfqxi3dvb2ckWR7aVfjWl77Ne2tkEoQLb3ZawX
         pQlVBJkxLGHilLr0kWGXrhnk3hyrMYbrCSegOV1cUOAM/DavQKi3W4QF7KZ5k1G5dq78
         DVpmUkGfOCJynB3TefUGA9WXSkTdS8DwSOQk0uO8wSozJNSTePo22s8S7NAMS4W/pR7L
         CvSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfK0l5WkQOH7kgtIzr3OvuqSWyQNivZ5yqoe/Tg256A9aNOHoBh4VY8bHRu+5lhx2Ycyywq8+SjIvK@vger.kernel.org
X-Gm-Message-State: AOJu0YxqqetyVl6WswUp/S7lHjE87nh7d+zF5OyU+lSydn/G7aOVYQBx
	7KaIh1Sf4y5O3p+MVGnx0y8watSKIqc/bSj6Lyl5QJwo3QUeLaivb9frB0LD0ns375sOX6HfBHW
	JyctaSQ4tbVTTxZet8VXWDIy6Y/AI9qIJUxTxsWx4VHm/9r4sXeZGl2osrBcUgdTl
X-Gm-Gg: ASbGncsZXSTz01llygNJfZUywFDUq7f0q4ou39uwnV3+khHWFgVBLZny3bxQhPE7Mmv
	MPVmhBosmvaO2s91frbVqtmMMMuTt+dbYcfI+kRRvUx7qR6jzCtyCjW7l3hTXH645RODueNFyR9
	C/ppIPbcslDl9w8taoa2/WopsBg+KyVx9DF/3ywa/Y9qQCNQIQCJkyJyqCze3uoHhHL7R3tTJAZ
	i4Oc4rMxN9nqn0B3SAd7PcyFEMySIRtJAhpC/8UldcJ7HDqb73M8RTky8klppeAetzDkepBfI8D
	7x9fc8+PdeiehEtFOsVnryZ4S/wfW4MTrbEMAKsNhVlme1I0L1qM08GZorRbEEZif3XsIbVoAeE
	l9GwScElSaJIViSIWiaXh7Z0BVw==
X-Received: by 2002:ac8:5d04:0:b0:4b5:dc4f:7d67 with SMTP id d75a77b69052e-4ed218b2d97mr84166581cf.27.1761922282452;
        Fri, 31 Oct 2025 07:51:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiqlPMTbBzwyiCGaE1HoFoxKY7o0FlGWqZYGr+NFtP767aljy4Y4P8W3NpsXWiQgKZbZKCfw==
X-Received: by 2002:ac8:5d04:0:b0:4b5:dc4f:7d67 with SMTP id d75a77b69052e-4ed218b2d97mr84166221cf.27.1761922281971;
        Fri, 31 Oct 2025 07:51:21 -0700 (PDT)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4773c53ec43sm599235e9.9.2025.10.31.07.51.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 07:51:21 -0700 (PDT)
Message-ID: <34f9dac5-b872-4384-882d-227f0ee06453@oss.qualcomm.com>
Date: Fri, 31 Oct 2025 14:51:19 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] ASoC: codecs: lpass-macro: complete sm6115 support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: robh@kernel.org, broonie@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org, perex@perex.cz,
        tiwai@suse.com, srini@kernel.org, linux-sound@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        alexey.klimov@linaro.org, konradybcio@kernel.org
References: <20251031120703.590201-1-srinivas.kandagatla@oss.qualcomm.com>
 <dsgivtqhje3wnx2iuma3ngnq5kanmt6eautay57raf23vcxi2i@y5b3sg3mn5mh>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <dsgivtqhje3wnx2iuma3ngnq5kanmt6eautay57raf23vcxi2i@y5b3sg3mn5mh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Lo+fC3dc c=1 sm=1 tr=0 ts=6904cceb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=8Xdm6kdhLhAbRQ0PksUA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: dgMDHAOkCUlCz1kSovX49ExAv2a8tt1u
X-Proofpoint-GUID: dgMDHAOkCUlCz1kSovX49ExAv2a8tt1u
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEzMyBTYWx0ZWRfX3cjp6PcfaP4+
 xEJV5iBD/3wAe88arsLWB3wUQ0OmdJBGyo+FFLsYUMp0ATBPAvQVRXEvsmMg86xGs8r8aVQzvts
 ejBOYOlTM0cx3tOnXvYMYoAG2acVdr42U1ePwmNJ76ZB3A2dd7sYOxhipYCi2/6AafkXmJCuWwN
 NEwFdO6iW/EyLXgk4jr7SdGbcu5s3skrbRRWIRL4u8DYzE7+5uC2VjU6BOak3uBx3c6lF1bynM7
 G1XFgf5U7R+DnZa0vnNqSI9KR8+er4lQzBcb0bi9yhTzD6CQiEEsokvKTxI0PTJAPBB+MI8TDci
 oP5kll9kOfMHf1uGsr7TzDtLfyXeICJGT0inOIXfY4HF2g6oLG6Z83yItYwG9rzs3+K1TbKWuTP
 GF442y0gEyg4K2F0saPLxGkFQxjU4g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_04,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310133

On 10/31/25 2:46 PM, Dmitry Baryshkov wrote:
> On Fri, Oct 31, 2025 at 12:06:57PM +0000, Srinivas Kandagatla wrote:
>> This patch series fixes SM6115 lpass codec macro support and adding
> 
> Nit: adds
> 
>> missing dt-bindings to complete support for SM6115.
>>
>> SM6115 lpass codec macro support is added partially and broken to some
>> extent, Fix this broken support and add complete lpass macro support for
>> this SoC.
> 
> What exactly is broken?

lpass tx macro has soundwire controller, reset for this is not handled
in the codec driver, First patch in this series fixes that which is
also explained in the respective patch log.

--srini


> 
>>
>>
>> Changes since v2:
>> 	- fixed a wrong patch that was sent in v1.
>>
>> Changes since v1:
>> 	- cleaned up va-macro bindings for clock-names.
>> 	- cleaned up va-macro codec driver to include soundwire reset
>> 	  for sm6115
>> 	- updated tx and rx codec driver and bindings to have a dedicated 
>> 	compatible due to changes in number of clocks.
>>
>> Srinivas Kandagatla (6):
>>   ASoC: codecs: lpass-tx-macro: fix SM6115 support
>>   ASoC: dt-bindings: qcom,lpass-rx-macro: Add sm6115 LPASS RX
>>   ASoC: dt-bindings: qcom,lpass-va-macro: re-arrange clock-names
>>   ASoC: dt-bindings: qcom,lpass-va-macro: Add sm6115 LPASS VA
>>   ASoC: codecs: lpass-va-macro: add SM6115 compatible
>>   ASoC: codecs: lpass-rx-macro: add SM6115 compatible
>>
>>  .../bindings/sound/qcom,lpass-rx-macro.yaml   | 18 +++++++
>>  .../bindings/sound/qcom,lpass-va-macro.yaml   | 49 +++++++++++++------
>>  sound/soc/codecs/lpass-rx-macro.c             |  3 ++
>>  sound/soc/codecs/lpass-tx-macro.c             |  3 +-
>>  sound/soc/codecs/lpass-va-macro.c             |  1 +
>>  5 files changed, 59 insertions(+), 15 deletions(-)
>>
>> -- 
>> 2.51.0
>>
> 


