Return-Path: <devicetree+bounces-254334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AB443D174D4
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:32:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EAFEC3026D81
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AD0837FF76;
	Tue, 13 Jan 2026 08:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iPx1WEtF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W29Dvpzh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2458F318BB2
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768293045; cv=none; b=Aft5gaQPR1X4LZn6nsksUKzUlqW5P0xIGtT5Pm+lJJQyYF7tty+t1HNN8xgyLZiVHlBxlQPMTLdBaP64ZBnp27IYFquLZNThgsOihwAOhd+1rl7RbarxRTJeEMhX9/qDKqSHg2/kzsfV7GF35iy3dAQPD6K++LuL64oIUslP1/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768293045; c=relaxed/simple;
	bh=o+3hh92gUNXkXFzYmwxLukiu7xCIV41V8/oGkaeIgbo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k3XVjNJPxGYx4YZdGzA3+fYUBG8W/SzvILv/r0dScYBjgmbcejIvKWVSrj8w0pMYOfl8kO9GGYtdJgXhHqs9EFODVfbT2+HwTT2bXxLQmP6mVn11fnyb3l7S1LzxntNjseMAeoAfV5mcSXIJv7xl9xLtVCk7gJbPN4eBJ1CPyrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iPx1WEtF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W29Dvpzh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D5gqQs3810617
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:30:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5Dkc3DGT5YgEDWgnx8G7r773Yo9JqPtmdnTR+Qu8ZBk=; b=iPx1WEtFouFzg4Bd
	1pAFM4HsUpYhr8JwfaDycboBbcnPV88YEX+hpKxd+1JGm0BaxZR3gcJJaH/DW92Z
	PtPaqdX/n5otsKx6tySVwUVPcSFiI0B+NGHxlpLoXhH8pVbRmHn4OMtiaIcGG4tp
	cMkb2FrFGSdzug+U75W9TwQgHNnLc05CSu9kwoB0cFGG6rYDum6ByljXYtdT6dx/
	Tait3K86pnCIti8aobbSkHeeW18o5JiYnf4kpcZQxWNWF4hKHRcVhjocT/Q3LTzm
	dzUyJ96uUo2ax0JuVHZmVCRkGqBaIpbSNP8qv6ipS5BepGeOrCGCx4hKwh8h9Hhu
	6yloPQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bng55rfqb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:30:43 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1aba09639so19715581cf.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 00:30:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768293042; x=1768897842; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5Dkc3DGT5YgEDWgnx8G7r773Yo9JqPtmdnTR+Qu8ZBk=;
        b=W29DvpzhQntv3xz65corIqZra2oOhNdus5hDu9LnzYv56VwiyD+lgnBF/OcQCzaOjX
         NMbKDxl4Wl7MJ39IsQVp0WmJYW0cV9nL4QJUJuSwRep/zG3AUDB4BP9duRbOIfyE5Te1
         oeAOgcNKU4MvgbnMhehezpbKFlplfcGyC+BSFGaJVajDVUdaStPRSekWpuzHjQ7m7TwS
         MCy8xUgUe2pUGSqpZrC04HcEFAwwCZfBeXjDY4U8pnDduPPtphJ4y1SDN/R1FY5XZagF
         mZPJ+g0QgXgjslKkGwn9JUsmLNv7XhSr5jdyiVYs0EJvsCfntZAojOQ53LQPa+vKq2qz
         /6Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768293042; x=1768897842;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5Dkc3DGT5YgEDWgnx8G7r773Yo9JqPtmdnTR+Qu8ZBk=;
        b=F+VzCRfNNoFZ3+9E2W5iQ0q8aG6domqCPIQ1hCTjKoPaPMoMwwHrbpNGwDUf/ujlVe
         mqjSNoEUTBDGdZWhPmaoVZd6B4nkrgEhkYpcbMuKdVxf+Nk0VeCp6Ss9sAM6+htfNNQX
         TkI6vKaIzPAfuQ6+fuW8SEQryMefr0rSSMyPYHb8w5t3o1UJ8mrpXvJYpXFXBuo7wWdu
         5oeRj7UNAH17f0A0j4wyB3DmxEQqWUJqdMQ7zxFY3MILFM+cF/xxGvxj0AoZtyi0mWBc
         R6d2jzXt20lC3Te5fFi8FLqsT4gJJvjSIYpwdy/DBD9lrtMhc2Whjz72RA/TsPex0S31
         Gh1w==
X-Forwarded-Encrypted: i=1; AJvYcCWYAK4jJdh43GtiLLJfyUaIav19ViCqDoDjNsGYES+uRre6SSerpb1+MzJx6dKDaPrblx3lS6Qv+Q7K@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1OlP8TcWVQjpAAszONMgERJrckYZybxcGC/x9qZdGMJEQPTfv
	UhY1roAUmXBdcK3iCAOQVhbAbsrx70LLY/bZoMwpPQsV26+3/sX7crytP+s/x/a84Xnb5R0WeQh
	mpRA/GvA+mNr9qWu3s8rTne/H7aYgfYvmBqBVrMK9EsXBP0Y56G4Klc9PIzwWx9Tk
X-Gm-Gg: AY/fxX4YDsOmwChQey/iDmmFrdagNC7PTLMfbqhOi21jKTiJZDcCGcRY+jC16Eip/so
	9TQ7+htfdZYyC/cWn8xMujt7CpcitlPn8zbGfQ/3eQ/bQ3B336q0uAlS1Ip+gMMW0NakRBA9nC3
	+dMaTava7b2pFqzM24ehNduFZMkdJfn9Zxf2he14tXNp4DSAjx7lPxPZbCp019nI9M1ZY0T819R
	Qzvc7HD89Hdi91+zo3/9MsBUctzWAuDA6NGWcvzrlq1KTPFb26mvDY/KUMEexlx1Me5X6qGF2lU
	0piUSwwNJo4x8vv6nhwXkTUl1H3n/xqbhTFePRm43yOInSWvlr7ATD1ho3IczIAPjWA4z/RG760
	IJIan67Q7JFVyaFpPM2eIuguvLgJRLJA5dYcrItv9BQ0A/SIy/0lxloiVKzQgwy6fnLE=
X-Received: by 2002:a05:622a:1890:b0:4ec:f9c2:c200 with SMTP id d75a77b69052e-4ffb4a6d91cmr216409551cf.11.1768293042030;
        Tue, 13 Jan 2026 00:30:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGTAdv4QgUXhZVd+H7TBbioed5otVPv+dklTfodvZY//62rOLcuJJ3Av/MMaTEINkc/2pz8ng==
X-Received: by 2002:a05:622a:1890:b0:4ec:f9c2:c200 with SMTP id d75a77b69052e-4ffb4a6d91cmr216409071cf.11.1768293041259;
        Tue, 13 Jan 2026 00:30:41 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b872542f94fsm422977966b.4.2026.01.13.00.30.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 00:30:40 -0800 (PST)
Message-ID: <fcc6544f-b0dd-4f23-ade7-4d6f8b6a612f@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 09:30:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: Add support for ECS LIVA QC710
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Val Packett <val@packett.cool>, cros-qcom-dts-watchers@chromium.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260111085726.634091-2-val@packett.cool>
 <20260111085726.634091-6-val@packett.cool>
 <wyqml5ywfzwh3uulp4gzlfzx24kb2545w36pkpnz5g27xtnqoi@yywysi37tdor>
 <3dd54179-7a22-4596-a6ef-224530c4b2c6@packett.cool>
 <2f0d6bd9-0786-4445-94d2-5189f6b44d01@oss.qualcomm.com>
 <e7j3hctjlly44pjwe3jvjtpjuj33bdvpyo6pzc6o3q5tjjlyib@7evgyweq2deg>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e7j3hctjlly44pjwe3jvjtpjuj33bdvpyo6pzc6o3q5tjjlyib@7evgyweq2deg>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: JQbgOXbO6MDdlofLdudC-dcCWlJjq9eG
X-Proofpoint-ORIG-GUID: JQbgOXbO6MDdlofLdudC-dcCWlJjq9eG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA3MCBTYWx0ZWRfXxdStRnxOORJz
 yCWMM/E4cOnf9mKUZ058GD1M9c3GliyNX0FH1LJoKgHPu76Z2E1HBqX8bdTSvNkrYmwYjdfJjZf
 7ReIW4Nla0/dfdEALCAHTfCMxAZgYcMoGMX6rGDGQqqPG/aeFWufvaaYe8bd2KQ5jB81u6mNYqv
 1Sz04eYdqGTDK/y22iWzJdO6GHBm7XrhFwb1djZaCa43108176VRh6qgpkmpRyi+s5dKD8f9bEy
 KxfLIAc2JmDnXwrHwu1DMJJlcNstGR+huQsNO7m3fBLc/a7rq5IDO1fsdSRBbPCfa4MjuUSluGu
 x5etPlqHDtFj3ZK4pkRhifYeGUT6U/6AW4gjgY759wLjxgYt5RYEj/si9J3O2wLWgBeZTCxjtHK
 7oY1ykG26f5BXmjOtZ77k463lY+8CPuDVCu/rIanhJdZsaKwpreMPD/34RdVCxVv451XnyUSSSy
 P0Ck2uuyX/p9ps3KcPA==
X-Authority-Analysis: v=2.4 cv=IIsPywvG c=1 sm=1 tr=0 ts=696602b3 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=mDM17k1GwWedXxnFom8A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130070

On 1/13/26 2:31 AM, Dmitry Baryshkov wrote:
> On Mon, Jan 12, 2026 at 11:50:25AM +0100, Konrad Dybcio wrote:
>> On 1/12/26 1:31 AM, Val Packett wrote:
>>> [resent for the lists as plaintext, oops]
>>>
>>> On 1/11/26 1:50 PM, Dmitry Baryshkov wrote:
>>>
>>>> On Sun, Jan 11, 2026 at 05:35:12AM -0300, Val Packett wrote:
>>>>> Add a device tree for the ECS LIVA QC710 (Snapdragon 7c) mini PC/devkit.
>>>>> [..]
>>>>> +&dpu_intf1_out {
>>>>> +    /delete-property/ remote-endpoint;
>>>> Why? It should not be necessary.
>>>
>>> It seemed to be implicated in annoying EPROBE_DEFER issues.. But you're right, it wasn't this after all.
>>>
>>>>> +
>>>>> +&pm6150_pon {
>>>>> +    status = "disabled";
>>>> Do you know, how is Power-On routed?
>>> I think it's handled by the EC. Keeping this enabled doesn't make power-off work, and doesn't make the power button deliver events either.
>>>>> +};
>>
>> FYI I don't think a modern QC SoC can turn on without PON
>>
>> What do you mean by "doesn't make power-off work"?
> 
> It is basically a laptop SoM in the embedded case, so it has EC and PoN
> generated via the EC.

I got that part, but this doesn't answer my question. Val mentioned that
separately from the power button not generating keypress events.

Konrad

