Return-Path: <devicetree+bounces-256669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA87D39F1B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 07:57:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0B4B3062CCB
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 06:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5AF728C5B1;
	Mon, 19 Jan 2026 06:54:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jq+f7eTH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="izGCIgx4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2312B28A72B
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768805654; cv=none; b=lie9gO+5EkaWeHk+AwIN29TB6vbhCpix8p1sSATQ0G+Urs1Ehko9i7te1o8w8+61sqMHmoZE7/loDpCcKRrnDDrE6iDbsxuanjxPbThYdaw5TZ34SvTS4YD0EnHyFI3Mk7LjFA9b7xtqFz8eQtt/9KASM6AuOe0vRzwukQS+Ehw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768805654; c=relaxed/simple;
	bh=dB34Q/7ovZ0Uovcmu+jTPM3hWWSXCnht6Lw0tVCnuEU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zls3er5NfdxtynYPX7f58iSEFy30RncpL+Vqf7ATuLLWp+Zoy049hQeWIkkka6dfjpFcr4YAjWafJOkz9FTNO6V7fNa9ibuN9zv06lO4Gi3AVww4D0Qs6MdatRRkGKz7OCANUOH6WY0pTE8mokNg5nKNUv8J7/egyt8HHfCsKz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jq+f7eTH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=izGCIgx4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60INrnnn290327
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:54:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iF15pdOmlV9OjqMsRWy8S8UjqNMKUQm32GQpSrRGMa0=; b=Jq+f7eTH17FH1eYs
	hDfPjNzFMGPC/0H1iwN66oPkiJ9cacZvJ7xGzUXPmPM6VDD2ZI19LUcOigM6qCnR
	Tiv2igXvG8GuiThhHoWvGTr5WqByB4BN3jRh+GqKKYURLTvecamaqlscmRJWOR6R
	D5QthHmUBWpwsjcOi4XDfhhq0wWBnvZY/rDUDwwXqnNFc0KC5KS73sC5gI8igign
	ccQo6qp8ZpEYmYqSeb/aTCCuvWFj0ZWfhCtYW1Udi4q0jeoQQt0subohIVMJ8ib0
	FNOv1mALcIp4pozXb0TCUM9DBeoyki0Ia/CfJv5e1lf3c0hKq9Wde+IcjY+FeVei
	thKskw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br2gum2ah-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:54:11 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34ea5074935so3934189a91.0
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 22:54:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768805651; x=1769410451; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iF15pdOmlV9OjqMsRWy8S8UjqNMKUQm32GQpSrRGMa0=;
        b=izGCIgx4NWt6Q2DTAaXlEhg96T5mL0z2m/BfR5xSmSKDu3JEz7KPUIpjFs3+kwSGwE
         LpCb5nVh2S9tXdn3n1lj39RckCxBFTtxYhzBg7rXgRj77yFkhUg4q6itxuaPicN7ckWg
         jhM/cAr8FA3H1FpvQNe7IHRMszaWdPRSOaiEI1WapjCu7WKHzeJRt4RTBOWzEOjld36r
         FpUcR1pJWjKUzlVBGUOrzctpd0lJLWYHpHQgYVTrUiYJc2uT0ot5BmhbKDcCCIHzwx03
         VsQ7NKq3z8vMBmulzBIg5jytIKwVhX4IzzJioMqe7RuGHgzxt8UBU32QMgB0LcNJApI7
         dv4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768805651; x=1769410451;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iF15pdOmlV9OjqMsRWy8S8UjqNMKUQm32GQpSrRGMa0=;
        b=VnF56jn4ObVaYwuv/S8RFGAl9D5W9/Ny88ckReJ+AECC1xHrwriVDsDa+ROq0Ri7yG
         Vedwj5ApB1bZpqkOxVZnudZ3uP0My3TI1+yZ2CZZtUOEhSs00bOaJLk5ds22CxaqESEd
         IubOGzFqdT5ZXAc7DFCeacQkJPdvoExxh4X58Zk6kEv/k9RUQ6GuUvEHOINN6kM0Ljfr
         WkrTbCHtSYAWrG4gTTf7gs+yAsnHgaILVMomwprE5XyuSLwdxWy8MaFKhpLHY01DNrxm
         pjSteylnPVqc4AlC0JYO9K2tjAakUvjGv8HNM3IMGrzJsUFZOCTFzhi+vdUNxZ+UrWpf
         n+yg==
X-Forwarded-Encrypted: i=1; AJvYcCUbYQMsDAhja4e0681r3bbref9kt2xF8j8zWpqrynx/elGl8e8NrAxsRToNo20woleViSsjY0huh4mM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1/PpqNDo8QQG0tqOe8ZSP+iYlhcSsSuduHtLB3usap0B5JAB5
	+qrqpwfmmt6e5pTaSyXwSjZaZtslUdE7BKtUFHxvOe9wHrL5Cxjyp3ic66NJyDZuU9xl27ns7Tm
	XnDhsECcwOzqy9TcpYwz7FTFJ261fkBAohkJFuLZD4YGGRaQ4XP6PZXKpif1jPW0g
X-Gm-Gg: AZuq6aIfWMekTS0vHBJOr827Y2gjT5LIGkf1/l6Y7O3VzV/5LyStXuAxsbuAxCNcgKi
	8LhwikdsytUFXwTMAInmBi/1IcIZH3TlI/KzfJU0CLrHnV9l3wcyrZZUu2635KvshR60X1LyI6d
	wvw5s69nIDIwY1kn4KWHGg5PdnMNdOUWG6nWkGIHrKDaE/gXcgfKdFd5uOMvbH+/fV0EWR0EOUZ
	DsIADTwhDeM8st8VFGQDSv9W8AXfFDhLuVJM8ZxGfuISshqv9rBaxuwFz2w3JJIKL7DM6OnOf8z
	6nNMg6VV2KM1Wb6qpm1hDsNxGQaaT5RnCXl+xY5fwrhXCpIGj64G8SpK34313GfeUm/tHFeOTMX
	+9IkFnF2521QSl3gf9PuPuzq+9rTnnRevmA1eOj/cg1kUMf3Z4E3ExyQwJnBMC59McxCNtScs6G
	gO1Ng=
X-Received: by 2002:a17:90b:3e4b:b0:340:bc27:97b8 with SMTP id 98e67ed59e1d1-3527317961dmr8168605a91.10.1768805650797;
        Sun, 18 Jan 2026 22:54:10 -0800 (PST)
X-Received: by 2002:a17:90b:3e4b:b0:340:bc27:97b8 with SMTP id 98e67ed59e1d1-3527317961dmr8168576a91.10.1768805650199;
        Sun, 18 Jan 2026 22:54:10 -0800 (PST)
Received: from [10.133.33.126] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-352678af465sm10498378a91.11.2026.01.18.22.54.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Jan 2026 22:54:09 -0800 (PST)
Message-ID: <e2dfb857-1fd1-4d29-b04b-6dec0b7563d5@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 14:54:04 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] Initial patch set for PURWA-IOT-EVK
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260116-purwa-v4-0-89b2adae9f09@oss.qualcomm.com>
 <jeyj5wqu4uw7tnm4h5ryatoqupdrqpkjcynnydgbum6oj2d4jj@qvvbbifrvud3>
 <ed49abf0-c2b6-4496-a3b0-ef040fd94615@oss.qualcomm.com>
 <b3p5yhstng6nbrrdavx67vlv62hqqlnms7742txbimpeswqklv@eomkmkkearwp>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <b3p5yhstng6nbrrdavx67vlv62hqqlnms7742txbimpeswqklv@eomkmkkearwp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA1NSBTYWx0ZWRfX8UVFrYYDhL9P
 qsYoqVWIrUtgl3TinyXlG0wr6oBiYSdJPgpwJ4AwzHhQZ7XWWoUZCFDfbI9Ezk7Zh+F92UWzlfx
 EWGRg634HCk5frYjrxMc/sbTrJfaWFyZZDvajKaE6tChga7hynuLXBUhrh6xnG8ZrVynL9aSYKw
 hEFNClwFX/tH7X9zTCUcUQ53lFngrLUKqouQAoVaMMbWToP9jzW4V3Qh4itbN8Qn5+smS5jBNoo
 4HFpVkUNEVAI8WSAqwNQA1tLREYKkHWiIE0KoRffbTLYX1kcmPn9bmT2xPuhJaMMc9d8wfSnj6B
 pgHCsYEuCka4Vkj7TKuOCQ1TuFAMBivh1eXpFmkc+PAmixhvx7HwqyLI37imP7C8t0MKbH87v52
 vE2BccteoBeG9UgP9DxyITkj1qp7KAyhGVG/c5zfsVfWfJD0AuYt/3nxas5W7ouaNviuKzNO0TQ
 LWDTbQiQL0GfUJB56Lg==
X-Authority-Analysis: v=2.4 cv=Sev6t/Ru c=1 sm=1 tr=0 ts=696dd514 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=R7vQKasIsJkg2XgAIocA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: 0uRN168MkyOFMXdbjmN72FxX_KJMeEB0
X-Proofpoint-ORIG-GUID: 0uRN168MkyOFMXdbjmN72FxX_KJMeEB0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_01,2026-01-19_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 impostorscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601190055



On 1/19/2026 2:34 PM, Dmitry Baryshkov wrote:
> On Mon, Jan 19, 2026 at 10:39:04AM +0800, Yijie Yang wrote:
>>
>>
>> On 1/16/2026 7:31 PM, Dmitry Baryshkov wrote:
>>> On Fri, Jan 16, 2026 at 06:41:26PM +0800, YijieYang wrote:
>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>
>>>> Introduce the device tree, DT bindings, and driver updates required to enable
>>>> the bring-up of the PURWA-IOT-EVK evaluation board. Focus is on two key
>>>> hardware components:
>>>>
>>>> PURWA-IOT-SOM — A compact System-on-Module integrating the SoC, GPIOs, and
>>>> PMICs. Designed for modularity, it can pair with various carrier boards to
>>>> support diverse use cases.
>>>>
>>>> PURWA-IOT-EVK — A carrier board tailored for IoT scenarios, providing
>>>> essential peripherals such as UART, on-board PMICs, and USB components.
>>>>
>>>> Together, these components form a flexible and scalable platform. Initial
>>>> functionality is achieved through proper device tree configuration and driver
>>>> support.
>>>>
>>>> The PURWA-IOT-EVK/SOM shares most of its hardware design with
>>>> HAMOA-IOT-EVK/SOM, differing primarily in the BOM. Consequently, the DTS files
>>>> are largely similar. Both platforms belong to Qualcomm’s IQ-X family. For more
>>>> details on the IQ-X series, see:
>>>> https://www.qualcomm.com/internet-of-things/products/iq-x-series
>>>>
>>>> Hardware differences between HAMOA-IOT and PURWA-IOT:
>>>> - Display — PURWA uses a different number of clocks and frequency compared to
>>>>     HAMOA.
>>>> - GPU — PURWA integrates a different GPU.
>>>> - USB0 — PURWA uses a PS8833 retimer, while HAMOA employs an FSUSB42 as the
>>>>     SBU switch.
>>>>
>>>> Features added and enabled:
>>>> - UART
>>>> - On-board regulators
>>>> - Regulators on the SOM
>>>> - PMIC GLINK
>>>> - USB0 through USB6 and their PHYs
>>>> - Embedded USB (eUSB) repeaters
>>>> - USB Type-C mux
>>>> - PCIe3, PCIe4, PCIe5, PCIe6a
>>>> - Reserved memory regions
>>>> - Pinctrl
>>>> - NVMe
>>>> - ADSP, CDSP
>>>> - WLAN, Bluetooth (M.2 interface)
>>>> - USB DisplayPort and eDP
>>>> - Graphics
>>>> - Audio
>>>> - TPM
>>>>
>>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>> ---
>>>> Changes in v4:
>>>> - EDITME: describe what is new in this series revision.
>>>> - EDITME: use bulletpoints and terse descriptions.
>>>
>>> Oh no. B4 probably even warned you about not sending it out.
>>>
>>>   From this changelog I can assume that nothing has changed. Is it
>>> correct?
>>
>> This section was generated automatically by b4 and was not reviewed
>> carefully. The actual list of changes is in the section below.
> 
> But why????? Why do you ignore what was done for you and write it on
> your own, reversing the order, etc? And even if you decided to ignore it
> for any reason, why didn't you delete it?

The confusion was caused by mixing b4 and git format-patch to handle 
fine‑grained patch formatting. The Git configuration Konrad suggested 
did not work for me. I ran b4 prep --manual-reroll <msg-id> to allow b4 
to track the upstream thread, which caused this section to be generated 
automatically. I did not notice this and mistakenly re‑wrote it myself.

> 
>>
>>>
>>>> - Link to v3: https://lore.kernel.org/r/20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com
>>>>
>>>> Changes in v2:
>>>> - Update the GPU firmware path.
>>>> - Update the description in the cover letter.
>>>> - Reorder the patches.
>>>> - Use separate DTS files for Purwa and Hamoa.
>>>> - Update base commit.
>>>> - Link to v1: https://lore.kernel.org/all/20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com/
>>>>
>>>> Changes in v3:
>>>> - Delete unused PMIC and thermal nodes.
>>>> - Add WiFi node.
>>>> - Add display backlight node.
>>>> - Add connectors and VBUS regulators for USB3 and USB6.
>>>> - Enable PCIe3 and PCIe5; add PCIe ports along with reset and wake-up GPIOs.
>>>> - Link to v2: https://lore.kernel.org/r/20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com
>>>>
>>>> Changes in v4:
>>>> - Enable TPM.
>>>> - Update the descriptions for video and the USB OF graph.
>>>> - Link to v3: https://lore.kernel.org/all/20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com/
>>
>> Here.
>>
>>>>
>>>> ---
>>>> Yijie Yang (4):
>>>>         dt-bindings: arm: qcom: Document PURWA-IOT-EVK board
>>>>         firmware: qcom: scm: Allow QSEECOM on PURWA-IOT-EVK
>>>>         arm64: dts: qcom: Add PURWA-IOT-SOM platform
>>>>         arm64: dts: qcom: Add base PURWA-IOT-EVK board
>>>>
>>>>    Documentation/devicetree/bindings/arm/qcom.yaml |    6 +
>>>>    arch/arm64/boot/dts/qcom/Makefile               |    1 +
>>>>    arch/arm64/boot/dts/qcom/purwa-iot-evk.dts      | 1549 +++++++++++++++++++++++
>>>>    arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi     |  685 ++++++++++
>>>>    drivers/firmware/qcom/qcom_scm.c                |    1 +
>>>>    5 files changed, 2242 insertions(+)
>>>> ---
>>>> base-commit: 377054868ffa544991cc491ecc4016589fc58565
>>>> change-id: 20251113-purwa-907ec75b4959
>>>>
>>>> Best regards,
>>>> --
>>>> Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>
>>>
>>
>> -- 
>> Best Regards,
>> Yijie
>>
> 

-- 
Best Regards,
Yijie


