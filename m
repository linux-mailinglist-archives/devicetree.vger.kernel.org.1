Return-Path: <devicetree+bounces-228829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A33BBF0FB6
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 14:02:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0C4F188C823
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 12:03:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6C2D2F7460;
	Mon, 20 Oct 2025 12:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k1lm7zi8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AC21C5D44
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760961756; cv=none; b=c5raC0eA/CvFgsb1RQgAu9LEATGHX2S9FKqQXtPz60Smq6h9hFqcFaED+whoSQceqLhw7+oZC/WHXsBUx/e+3SfisdBWv8WVae0R7hXnTn9UqSeaClXdvHvEl7P9bLJT7HD6OFaty8F2RWvvE2hJhe3T6BSXpy7NAF5xSL+i0AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760961756; c=relaxed/simple;
	bh=PH78YdDSnzwxCHJgRiRybJMbpOqlc4brc9B+cBQ8knI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J4Y1XXFSvss/+Lk6CWriYN08gRkDp0txV9XgAv6opK96izC9ClLnaP0YlmU+RTwcXlzw2tG4GL1Qm8MtcEACbJKrXJr72DZx2RszvJU96+Mnw7/47syvvhKdLQLA2TWyQ+64jFVFY+HMQyBkhLywTO02JZn9Vh5ibnXTi6aT4P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k1lm7zi8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JNisFw014776
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:02:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oIG694y6bAFJewqTAATkKo0qZg41tPW6hp12LV4gekY=; b=k1lm7zi8ubgptaZY
	JLhGvPqwvs/nB1B4ubs+IFCzETjhma39eF1OCc2WY/KcVz6r3GvJ2pxxjAbjm4mk
	OQhmVq+YAjWp4/u1P5ACrVZKjEyfRzHMdtu1WuA9Y92FHgT1Th1UOikmKCZD455P
	URQ0G2SN+nGvuCZVFR1PPzPoQR5W9lVLiLGzkdCOKcaQJxK2uBbzwkUgXjC+jxxX
	vlz7dtOdNRjkYDrNhN2Qdz5Ww1oQePNQLl1MMDz/Sqz3njU64D/OQfmyXYp7OkC3
	K3rxaxGBtSpzXyr1obmn2sALFFWEdiUMapm/OS1jB57Q5jYt6zLlkPwTQlLSdHuO
	mbDXkA==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v08pcw3b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:02:34 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-554ec61ecadso242731e0c.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 05:02:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760961753; x=1761566553;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oIG694y6bAFJewqTAATkKo0qZg41tPW6hp12LV4gekY=;
        b=rX20DN82XT3K0OrP9lHQOt2dDQseCAUknn5z5WbyPtKAAcN1eAS3Ytwln9ji4cRCmv
         w0j3S5ENaIzT3fMaxcwbBfBOq2VqbkV8w9Hs0aQuM6NgnSnqwS+BZ1eGV3Kt1VzcAWh6
         OwqZLp7VG6qDQkIDzBBpo9bqsTm1wUfNmbBh3lPTnCbYFGdhDqh1HBeRgzqMfzd2Mn/k
         JBz6BJHX++3d3rP5ZOeNsNqMWn3ls+PuozQ8vQMpyWUdBE3knDJvCQqpsp2fatL/Toah
         MmkqKalCbUJIcFCnTCKb76vwawflQyBEx6cw5rcvWfLSPB6dh1rV+fVn9qALLPzyo5DJ
         JQtg==
X-Forwarded-Encrypted: i=1; AJvYcCUMvItZkrWubxwfhxSqkGAKOB/mcKol0EghLQF4LWLvQTFKssLOeuQxFPZqIuizGraSJrVYDsrcPYjL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+gN+5ydFJh+UpZbxC5YAsT3o1Y8jCYchZsX6/2GXx4WMT3xRt
	QX4pD0mCZcpZccKwiOJ8kbi/c9r4dc1WRtRBjw6pLZSZnXvee5kwPgC5z0sak64azAMAKu0l3Ru
	wfRgK6Vcw0VBzbGTEDlf9iF1QA8+cyMmHnkcNmBbQE5sDgo6ZZkpm1fkQB3rWnc29
X-Gm-Gg: ASbGncsLnvyNQsW8KSiU29V54GENnfJDStdhAaoSRQ5zSTrJMcqKG174lHesULx2bQu
	lWzHugSq3egbN1WDaCgJ0A9fwYf24YTbbHe9CBHQmRNRNEMOG7ko9W4CwbADnG8Fu1Ko1GO33Mi
	BuZLAgS1zlWYhiIp9oPneUIp7TQdFb5szXQCNlHRQJEO8jPUVAjwqztvxYPCLf4zHRCRzO4EzcO
	dvqlkCPD/xaLBVWc55viX/dbLt3GK+sN/hxObolc/gW8gErLtL6wXj3Lu2+rJeAzC7/s5fS8wMp
	EZnqQC0pKkHvG0sq1HhlKHOQsSPs6I4nMsRH/ZHEc23+rAGk5YLyKgzD5VzXkvferQof4CvRQpy
	/uqJCjzht0+j4vCAy0D9Zn5zPZmLxTo0M4X0H1glExTPIE5s609hjcmBZ
X-Received: by 2002:a05:6122:3293:b0:544:6d56:eef1 with SMTP id 71dfb90a1353d-5564ee8267amr1600190e0c.2.1760961752959;
        Mon, 20 Oct 2025 05:02:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExb3d7wrCskvILwjadrYZ35oU1mcZoo+ieMX1KAj9vst3Hy1cKTiA0tq+qNgeFvEo1O8fu3Q==
X-Received: by 2002:a05:6122:3293:b0:544:6d56:eef1 with SMTP id 71dfb90a1353d-5564ee8267amr1600161e0c.2.1760961752579;
        Mon, 20 Oct 2025 05:02:32 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb036b2bsm790493166b.49.2025.10.20.05.02.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 05:02:31 -0700 (PDT)
Message-ID: <41c63020-9226-45d9-979d-429b7299da41@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 14:02:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] ARM: dts: qcom: msm8974pro-htc-m8: add status LEDs
To: Alexandre Messier <alex@me.ssier.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Pavel Machek <pavel@kernel.org>
Cc: Luca Weiss <luca@lucaweiss.eu>, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251007-m8-dts-additions-v1-0-53d7ab3594e7@me.ssier.org>
 <20251007-m8-dts-additions-v1-1-53d7ab3594e7@me.ssier.org>
 <6c791f05-70e7-49c9-a3ce-50fb82b0c894@oss.qualcomm.com>
 <fef52764-3092-4375-b9c7-793d85adc102@me.ssier.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <fef52764-3092-4375-b9c7-793d85adc102@me.ssier.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAwMCBTYWx0ZWRfXxfIDUo1wEEA6
 860znJFSb9qFDIEics8Y+IDve9eSWh6QMPDyoU/CxcPm+X0OAiP/SkXAfC+1pcY/ycLRQuQWnST
 BO74Ub7HYUB7YOgx1q3iLEOQgj/V+Tlb6sGfav9YLmZ/lE3jGgtLExkzQxWY2tjNVuVqpaWX9C/
 9V1v8OzwUZhkvBuCCCBHxhYXQTL1RdNhooDlHF3Ik4kbA4lwHrdHK587pr8iVc74ULSbBxDJP+C
 u7PbE5C4heQaYan/WhfMZMdACRXt3DNfZEq08txFh9KwxT5V8nUpUK+oFmtb/5WtYb6JSP9Zm2k
 Kmro65Npuc0O1yMJeaq9GvmuQWmpHCuDwRPpkFdSuJ+XVx1jtR1o1rm8K29OVAedURyqIXPVkQ6
 lZDNgfTmgB7UTFc9thRGgEPINfSSyA==
X-Proofpoint-GUID: stabL-P9O5Qr863_NWZg0DVHQJCq2Tr-
X-Authority-Analysis: v=2.4 cv=Up1u9uwB c=1 sm=1 tr=0 ts=68f624da cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=8poMKPHdAAAA:8 a=glctJ2XmOvm0yIQHyQsA:9 a=QEXdDO2ut3YA:10
 a=tNoRWFLymzeba-QzToBc:22 a=fyZPtLC9JlAwSkJ5-iUD:22
X-Proofpoint-ORIG-GUID: stabL-P9O5Qr863_NWZg0DVHQJCq2Tr-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180000

On 10/12/25 8:03 AM, Alexandre Messier wrote:
> On 2025-10-07 06:03, Konrad Dybcio wrote:
>> On 10/7/25 7:55 AM, Alexandre Messier via B4 Relay wrote:
>>> From: Alexandre Messier <alex@me.ssier.org>
>>>
>>> Add support for the notification LEDs on the HTC One M8.
>>>
>>> Two LEDs are available, one amber and one green.
>>
>> Do they form a single notification led, or are they supposed
>> to act separately?
> 
> Good point, I had to check the phone user manual to confirm. Indeed, it is
> referred to as a one logical notification LED. It also mentions the color can
> be either green or orange, it does not mention using the combined color of
> the two LEDs.
> 
> So I would say they are supposed to act separately.
> 
> Hope this answers your question, and let me know if more details are needed.
> 
> BTW: I will be sending a V2 to update the color name, since the user
> manual says the color is orange, not amber.

Let's describe it as a single LED then:

multi-led {
        color = <LED_COLOR_ID_MULTI>; // notice it's not RGB
        function = LED_FUNCTION_STATUS;

        #address-cells = <1>;
        #size-cells = <0>;

        led@6 {
                reg = <6>;
                color = <LED_COLOR_ID_GREEN>;
        };

        led@7 {
                reg = <7>;
                color = <LED_COLOR_ID_ORANGE>;
        };
};

+ Pavel the LED maintainer, please take a look if you think it makes sense

Konrad

