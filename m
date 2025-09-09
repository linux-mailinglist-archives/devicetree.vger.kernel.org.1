Return-Path: <devicetree+bounces-214688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B117EB4A1CC
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 08:10:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BB9C444A27
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 06:10:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ADE82FF147;
	Tue,  9 Sep 2025 06:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MQyu08Eg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37602FD7CE
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 06:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757398242; cv=none; b=MldswdwDlhy30Zx7FruT8YqmVHxaoDBqbHFMS7672Dxb5Tpy+VfJNPuegq9Fk/FGmIcjUKJg5wjtYqTRkwt+CenezjhhnzgQs58jhdsRPEuk5UV8PKlarvK5fVch+IL5zgEPX+9gPjY6W7jRv8izCkfcIb7Sh77xkOmtmJN3yCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757398242; c=relaxed/simple;
	bh=rVHuikTiUm+yYiuh5ynrRZAPChfwAhV3DMHGrmyb3vY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bJMvqSdDMLCMoJPIqasogEtgXp68YiQ+jt+cnOT/+s28DlJ8xsl8Or9s5NQEjO1sbIBqyq3vSVoTI6Pr0Z8gPnPGDj1CRKoCWHY1G0miZj5m70wOPsiJgqU3kXevhzyt8qwtR1bI7uzJFp+JwwTLjm0Rr4ti5m3iQwMjjvSOe1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MQyu08Eg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5895aTBB022416
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 06:10:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	10/u9q+Ectl5aZ4oToFDw7ffJZNCBBFAUzBbsaG295M=; b=MQyu08Eg7cEJVEmU
	I1wgOJUpg1xSzLHrhw8119YJdVWxQLVtr4k0wK7LN4XUBw0CJu0YGvh4FcJ5nVNV
	YvVRls4WyFEOWUaNTPru4iC3vj1Cyif45YvXh8DYL+CPbo0YmrTMQVbdhOKvFzOF
	h2Ndg8hRMbTD+UBUg1sEBbdBxav6X6eQrcj98gQAwXnTAlimoWt5MJ4G+0ZUSIsP
	bpbMx3P2VjTKSumFq6wxM0VoDioZpLhfwGIh6mfwf0TpltpK1EF8EMpFkdWVYADF
	3zqhrqkXlaYpO5092DDopTnh47gLjC2yWrIpKV8Ryh6Iv5+ho/ZxOeAGNtw+QM9C
	3/gIoA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqfxxes-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 06:10:39 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-329e55e686dso7962311a91.3
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 23:10:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757398239; x=1758003039;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=10/u9q+Ectl5aZ4oToFDw7ffJZNCBBFAUzBbsaG295M=;
        b=C0T2qSnCrqSp3YCa5TcWT4JMgLIw1mJzYwqnpE9N+mtMo/HB2WsxVveD/2gvWCc8q0
         fSgJWbptA+1q09qo8tNgtOn6XUiH6N8ZzZnhn+6+WBRZojHOpG/v0VkXA4dVxGzMiXnc
         umCal+vy9SFkyFuZxe34ZwP/BTIETtTzLD7mJDI84NOpczSvq5DkcsCD9XpSv7VBosmf
         m7SjMHV/Fzm394MSdqS2UQSrzRqHFs/wjnfLHZxWVHH7DsmYh6UiF1g8MUjbHzydWmbx
         XDeuouwCYkEnIslLOrX9FV5Qtd8PvZVb1jVYrl4ykkcRs7znHhiQPyiPdGzg0wPqQiu+
         K4Rg==
X-Forwarded-Encrypted: i=1; AJvYcCUR7mi1B5x0Xxa2///TF3hzn0Aziufvp/hRcggVR7EqySwMrbHSSJKklYbJLXuiim19C/9KqpN9BzYx@vger.kernel.org
X-Gm-Message-State: AOJu0YzEKDyL9PUgPQMeoHqq6zEI7X9m9dqxVIo7VAPz8fwOSFvG9/Pk
	vo4ePWxMEOIMyaUna3rBs2ohRhWW2AgqzP4qH0dneR6JP5IfDlQ5HYEx521uAeilb5SaGx8DrCF
	pgkiQqnEnejF8njYMyNtH35jVjSbv8jcWaSJlpVONwsVi5KladwfKvRR/oiOFYirY
X-Gm-Gg: ASbGncuNxWDk6mOzXTbWDgkx3xvT5h4Yni8PzOuNxd3B5gyrp8ECg9k32dO+HvUO2Jb
	Ke940TDI4vS5tHefpj36sPekiWOCEGYM/YJDiwuFzJyTVwsg0mqy6+QOkr7rESwj08jLjiNQCB5
	VCL4Ngx1+0SCy7Oeh7sGeDnemo/QZhMjVRis81Bx69kSKFi9LO3r8e+tXsKsT693FtJEXvSYNAD
	K4+oMaabD07lVDSvtMmGTnAoOCOclW9cFHX2kqPv1tduFOd22Ppjwf5gIKh4rq8yWYC3igsPrLv
	3EmtnNBn1gUwovLQlR3JrIhGOCbBs7JZcI8ZKH7A7iNVOJ5lvQUaWAWIjfQTkMu+uTkK/TIu/Tk
	areLZdLoC4OB3QamScPTrc7kS+/ch6Q==
X-Received: by 2002:a17:90b:2b48:b0:32b:9506:1780 with SMTP id 98e67ed59e1d1-32d43f4383dmr12807302a91.9.1757398238833;
        Mon, 08 Sep 2025 23:10:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/3YW/AGyw1pOiBdMzWKnU27fUqMCjMtdcgsRqWOBX438S0Hzgd28bb+NRvv3OT8HTB4tgzw==
X-Received: by 2002:a17:90b:2b48:b0:32b:9506:1780 with SMTP id 98e67ed59e1d1-32d43f4383dmr12807249a91.9.1757398238249;
        Mon, 08 Sep 2025 23:10:38 -0700 (PDT)
Received: from [10.249.96.170] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-774662f9cfdsm853480b3a.101.2025.09.08.23.10.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 23:10:37 -0700 (PDT)
Message-ID: <e514dac2-a732-45e8-a80d-a7a1b889f593@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 14:10:34 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] PCI: qcom: Add support for Glymur PCIe Gen5x4
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas
 <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, konrad.dybcio@oss.qualcomm.com,
        qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
Content-Language: en-US
From: "Wenbin Yao (Consultant)" <wenbin.yao@oss.qualcomm.com>
In-Reply-To: <20250903-glymur_pcie5-v4-0-c187c2d9d3bd@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: X8JPaHKFp8euzOvXZ6qBAp76LuCzxNwR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfXzmR9tC7+kFgD
 ZkAdgURFxZV268SO8Uzb8lOE9Z0SjH1hktkCsFSN97kr8uVQfTz0eKxIdYM5BB7U8Qa7PxFMCm1
 aemMz1ppILJt0ZdybWBxKtU1AyOsw1MsPKOnK1h5UohUXqjKEAUupQ+i+D2fpAi2RYPOknRhs/U
 pZkNikJO3K9DAD5vMPvtGqXaqdgc73AUQKd9IM4E86edbcVQrko/PaDNUKXsf4bmzrOzS6Dp7Xf
 hdzQRZdYOaBqeXIwwO2KOYSBKSEBK7Ggf4emxFfE20RI1y8GFKuIyXX7mjtF1YWFg+wZTpISmp9
 ywHzKzmRLCJNJTPdMlEvWm9vWdHnk0BJlh/7voZYd5SmUviEFGd4gfrGN1EkvvjgEAMpGL8FN3y
 v/TaEgT4
X-Proofpoint-GUID: X8JPaHKFp8euzOvXZ6qBAp76LuCzxNwR
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68bfc4df cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=nBUzdE8Pax3goPOuR84A:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035

On 9/4/2025 2:22 PM, Wenbin Yao wrote:
> Glymur is the next generation compute SoC of Qualcomm. This patch series
> aims to add support for the fifth PCIe instance on it. The fifth PCIe
> instance on Glymur has a Gen5 4-lane PHY. Patch [1/4] documents PHY as a
> separate compatible and Patch [2/4] documents controller as a separate
> compatible. Patch [3/4] describles the new PCS offsets in a dedicated
> header file. Patch [4/4] adds configuration and compatible for PHY.
>
> The device tree changes and whatever driver patches that are not part of
> this patch series will be posted separately after official announcement of
> the SOC.
>
> Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
> ---
> Changes in v4:
> - Rebase Patch[1/4] onto next branch of linux-phy.
> - Rebase Patch[4/4] onto next branch of linux-phy.
> - Link to v3: https://lore.kernel.org/r/20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com
>
> Changes in v3:
> - Keep qmp_pcie_of_match_table array sorted.
> - Drop qref supply for PCIe Gen5x4 PHY.
> - Link to v2: https://lore.kernel.org/r/20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com
>
> Changes in v2:
> - Add offsets of PLL and TXRXZ register blocks for v8.50 PHY in Patch[4/4].
> - Link to v1: https://lore.kernel.org/r/20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com
>
> ---
> Prudhvi Yarlagadda (4):
>        dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the Glymur QMP PCIe PHY
>        dt-bindings: PCI: qcom: Document the Glymur PCIe Controller
>        phy: qcom-qmp: pcs: Add v8.50 register offsets
>        phy: qcom: qmp-pcie: Add support for Glymur PCIe Gen5x4 PHY
>
>   .../bindings/pci/qcom,pcie-x1e80100.yaml           |  7 ++++-
>   .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |  3 ++
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 32 ++++++++++++++++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp-pcs-v8_50.h      | 13 +++++++++
>   drivers/phy/qualcomm/phy-qcom-qmp.h                |  2 ++
>   5 files changed, 56 insertions(+), 1 deletion(-)
> ---
> base-commit: 356590cd61cf89e2420d5628e35b6e73c6b6a770
> change-id: 20250902-glymur_pcie5-bec675b7bdba
>
> Best regards,

Hello, do you have any futher comments?

-- 
With best wishes
Wenbin


