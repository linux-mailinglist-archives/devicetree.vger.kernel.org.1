Return-Path: <devicetree+bounces-261200-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMFmMjCcfGn2NwIAu9opvQ
	(envelope-from <devicetree+bounces-261200-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 12:55:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D52BBA370
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 12:55:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 481AC300B2BD
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:55:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D1A7372B52;
	Fri, 30 Jan 2026 11:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nkdPfs8d";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z81s+T9o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47817372B2B
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 11:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769774102; cv=none; b=Ju3ZZYclwAUq69EP7BF4DkEuND37z5rSjHJH5UWrxYqQPd8xJgEXc4QKxMyqJXXoKvooXSeqX38qUv+FfdrPpAkuqyH60I/cVdRWw3xipnXTAhJm2+qz/foaqoC+lBSS5sUf1+605XnzBMCb37XHvKZoxRmvHzK57xh2WLFSF/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769774102; c=relaxed/simple;
	bh=CbgzOaYDkc3bXhiSUZkzlP8DjhXVBP0eRFGEsmWlQbQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MJh3kQgb8dSDmsWw+jYfTmmVns+z0BJhcljQmvVnhXul7C8zc2Hry8AcbWuVTTmJch7XYrfLE0af9oIlMgvZgpyINDj5zwfBtFY2BfUIpg4Jzjc1N/Jc622q69lJyt0dzWPRRH5ddbPuHLoQkcYLK41hb45iqWkiSQXMedByK/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nkdPfs8d; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z81s+T9o; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UB9jN12992821
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 11:54:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=yRCNcS5A6Eu
	GBIPJ6FqXwxvOo4jjK2JrobpZz5iBr1c=; b=nkdPfs8dgdIKJth9mytG0eIkkSk
	FcgGiTyfFD40VDfFsZhxfH6iwVUhX1UGP0XQ8Ga202JncUwrIn80TYBMQitfIn/m
	J1W9nQ7ELfBBHk+y1k9DvyT6qGG1deJtd1OdcroHMqeci2DTatuokoDdOWgtZzN4
	FboeIxPKpKQdbicNm1IyZLHnG9CZAanBju1KTZQSiSZQhJLQDHcvotFszQKF8OVs
	0r+zMRh78R8pr4/5RZfy7D34P8nGisU2gRKs3fmmgXgUOgbHGNCSJp6pfgUfPAIE
	L2BUJDgKmwjVeGNwOG2gOuVnXncKQOc5W8q7BJ4lTsJQzxMHtZHm/g0GhoA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0db1jp5u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 11:54:55 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c704d5d15so3932778a91.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 03:54:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769774094; x=1770378894; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yRCNcS5A6EuGBIPJ6FqXwxvOo4jjK2JrobpZz5iBr1c=;
        b=Z81s+T9omi3gs2rt/0vDiz6ibL07FzpavokSqc/DNJ74CcpIw6uUQPs+AmsNQ5GPAM
         YelSUeavgQjb2dmOTPW8uwd5JefeHHv4BYJ6IOht2I65EoCjqwXr5KquwaWm4zpgvuIw
         /sHZX5hPMDolETLLAEt4r48Fi4Ygq1AKdwVFEZOEi9M1tA/MmBBQyNYYUGP4d0DZjCvG
         6B/0rGE2x5qzAdFOHVAqwQ/Jz+offn/VEnA5Jr33SbyLxHuZWPp4T9RANjWYsRKoaakg
         PX4no7IDETYs6c3lz9TWymgZtQdqk+JWSFpD+Otb+KcR7LGGH39skOm/zA6hZ922FI5a
         CLxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769774094; x=1770378894;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yRCNcS5A6EuGBIPJ6FqXwxvOo4jjK2JrobpZz5iBr1c=;
        b=MjF2SYHPzINyIJV3oKWNV9TKIHUC8effFTum+7+sF7VKfH0lUphEPIMxfLpuZGKFUx
         VJrFvmEZxO/HZ9nf1coLZKVysy/fURgGZQUciHaneOChyFFl15pnmpunCzrHBaL3P8R6
         96nscTgV70JLQjADL9pHJSd9tXvMrSufup68MFoPkP5mfLZattzY3G/RHFUrkupSedtz
         Bsd8/apZelyt1kODmLsljqf7cWWlH4gOpM/WXKQUHpwmlBN9vscMlkEOXsTZE4nKS5Td
         utGe+co85Urz7QzzmvTDqdpya6UVcIQiw9Bh7gpfoC2MVZry/386w5dzg5oHHKnH9MqJ
         hgpw==
X-Forwarded-Encrypted: i=1; AJvYcCV9kDaIFBeEFstpMTmi3Y0HalY5Dzk/gPuduULOT7cRbCz2WrWf2TLjKqUx9GAVdNNte4YnPLST6WXL@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7bFLg/LMXz+MMhb2qcd5dELIQQ4wmamE2mDELgZm3oohifyci
	Np+dM8sPefXRc/kt8ec5lZwuBXS62HYtrGpH4XBfe9u5L7RRXCytnBWNrU8UmZ/w66HShwLm3D1
	3tZoGPNlJkniqI0ufwckNDRMTK+IzZbde3VRadtw3oxtH3wJuSS/npMyqHAVvGuTo
X-Gm-Gg: AZuq6aJb0u5xdwHReq02OQUV2pjWTqUywvoaelkGtR/lfGJoSwMRxWmCfkDUCf8UcgB
	cMN9/upbU2aHZn6zD2fDUtS+42DugN42RjAJkN7cQtuJrEA91ApHqD3AaSbeXIu75iO97qdwdq2
	+Z0z7VgdNu6Up9Z3ZCxQG1V9rmwlJ6bqdn+6jhgoC1rSo5NEc4/eBHmUFsp+Dtxs88c9P3AKjcp
	MAD3vtdj3rCmmbKyIIO0SUqI6ZF3xqRVmz3M7Cmbr7rjZ2gnFpvk/0oaCOR6jBDB7qsTCpODtda
	ZApgfTeiPaQjFGWqkRajfKPdBYVerUKM2QANB69rK1vGG9+52LiDzSPJiL7OcV9Ir7D3nD98IMS
	DzOEGpPD8CiYSigjyj2Gd4hrtbHkKZYFvZg5MgUYiIhiL
X-Received: by 2002:a17:90b:2fc5:b0:33b:b020:597a with SMTP id 98e67ed59e1d1-3543b185498mr2599991a91.0.1769774094074;
        Fri, 30 Jan 2026 03:54:54 -0800 (PST)
X-Received: by 2002:a17:90b:2fc5:b0:33b:b020:597a with SMTP id 98e67ed59e1d1-3543b185498mr2599969a91.0.1769774093547;
        Fri, 30 Jan 2026 03:54:53 -0800 (PST)
Received: from hu-jprakash-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3540f2f24ccsm10431278a91.8.2026.01.30.03.54.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 03:54:53 -0800 (PST)
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
To: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        agross@kernel.org, andersson@kernel.org, lumag@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
        daniel.lezcano@linaro.org, sboyd@kernel.org, amitk@kernel.org,
        thara.gopinath@gmail.com, lee@kernel.org, rafael@kernel.org,
        subbaraman.narayanamurthy@oss.qualcomm.com,
        david.collins@oss.qualcomm.com, anjelique.melendez@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com
Cc: rui.zhang@intel.com, lukasz.luba@arm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        cros-qcom-dts-watchers@chromium.org, jishnu.prakash@oss.qualcomm.com,
        quic_kotarake@quicinc.com, neil.armstrong@linaro.org,
        stephan.gerhold@linaro.org,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V10 2/4] dt-bindings: iio: adc: Add support for QCOM PMIC5 Gen3 ADC
Date: Fri, 30 Jan 2026 17:24:19 +0530
Message-Id: <20260130115421.2197892-3-jishnu.prakash@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260130115421.2197892-1-jishnu.prakash@oss.qualcomm.com>
References: <20260130115421.2197892-1-jishnu.prakash@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: vH-kEj7jOQfJEMAM80VibWixIau8IPki
X-Proofpoint-GUID: vH-kEj7jOQfJEMAM80VibWixIau8IPki
X-Authority-Analysis: v=2.4 cv=VMTQXtPX c=1 sm=1 tr=0 ts=697c9c0f cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=gEfo2CItAAAA:8 a=i0EeH86SAAAA:8
 a=YrMGt2jeDSw4g2R_97MA:9 a=iS9zxrgQBfv6-_F4QbHw:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA5NyBTYWx0ZWRfX/OyPWMA9ncfp
 CGtCkJzW3Jli6uYBNcvSWVrZ+O7F4oMlyss0byx85T3Q/9sRwz+0QUzNrfPgAsT2vmGapFrThf3
 DiloqtFtCq+Hlwpd6X8acmcGob/l7FPOMl0pfh4x6jL7sTQ3hwfre28mUS20cvPGIf4/SzqEwkJ
 xb/Pl/YcybbLPIkjqvYAVmmo4YjkKmV9U+/7N3fW36Insv3sZNLt1/oIlj7qVQUg2RwaCbUnr/b
 6GfElmRCHOcRKpaKaxgggneEX9qIqbWli3/i/E0StVf8YY2FUMd6hzmQeG7T47GtlqlVEAEMLq0
 D6DojFHHcw8uEo2MC7W5JnwW1xYp9rTPEPBPJ9q1Vwwymt9u6Gx/HkfD+njcAAIgJ+v0bzgsdJr
 /UUeD/NEPPpDl5cSpcJBh3MISIjFsoSD3J7MVMIKuKojHyp7gl3FS8fe61Hiadsipn+7r82yi8w
 mVVgoKnCrpw+VIzLQtQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 phishscore=0 suspectscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601300097
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[33];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261200-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,oss.qualcomm.com,linaro.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jishnu.prakash@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[huawei.com:email,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.3:email,0.0.0.203:email,devicetree.org:url,0.0.0.103:email,78f:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.44:email,0.0.35.40:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3D52BBA370
X-Rspamd-Action: no action

For the PMIC5-Gen3 type PMICs, ADC peripheral is present in HW for the
following PMICs: PMK8550, PM8550, PM8550B and PM8550VX PMICs.

It is similar to PMIC5-Gen2, with SW communication to ADCs on all PMICs
going through PBS(Programmable Boot Sequence) firmware through a single
register interface. This interface is implemented on SDAM (Shared
Direct Access Memory) peripherals on the master PMIC PMK8550 rather
than a dedicated ADC peripheral.

Add documentation for PMIC5 Gen3 ADC and update SPMI PMIC bindings to
allow ADC5 Gen3 as adc@ subnode.

Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
---
Changes since v7:
- Dropped ADC5 GEN3 channel macro definitions from bindings, based
  on discussion with Krzysztof concluded here: 
  https://lore.kernel.org/all/d10e2eea-4b86-4e1a-b7a0-54c55907a605@oss.qualcomm.com/,
  to be added separately in other patches.
- Fixed quotes to use only double quotes for "#address-cells",
  "#size-cells" and "#io-channel-cells" properties, to address Krzysztof's
  comment.
- Removed inclusion of ADC channel macro header files from ADC5 Gen3 example
  and replaced the macros used in the "reg" properties in channel nodes
  with the actual hex values.
- Removed update made under `reg` property in
  Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc-common.yaml
  which referenced ADC macro binding files, to align with change made
  in patch 1 of this series.

Changes since v6:
- Updated SPMI PMIC bindings to allow ADC5 Gen3 as adc@ subnode, to address
  Neil's comment.
- Replaced 2025 copyright in newly added files with yearless copyright,
  following new internal guidelines.
- Collected Acked-by tag from Jonathan.

Changes since v5:
- Addressed following comments from Krzysztof:
  - Increased line wrap length for top-level device description.
  - Added more details in binding description explaining how number
    of SDAM peripherals used for ADC is allocated per SoC.
  - Dropped "interrupt-names" property.
  - Moved `required` block to after the list of all properties.
  - Dropped | from patternProperties description.
  - Renamed per-PMIC binding files listing ADC channel macro names.
- Addressed following comments from Jonathan:
  - Moved ref before description, under patternProperties.
  - Arranged enum under qcom,hw-settle-time as groups of 8.

Changes since v4:
- Added ADC5 Gen3 documentation in a separate new file to avoid complicating
  existing VADC documentation file further to accomodate this device, as
  suggested by reviewers.

Changes since v3:
- Added ADC5 Gen3 documentation changes in existing qcom,spmi-vadc.yaml file
  instead of adding separate file and updated top-level constraints in documentation
  file based on discussion with reviewers.
- Dropped default SID definitions.
- Addressed other reviewer comments.

Changes since v2:
- Moved ADC5 Gen3 documentation into a separate new file.

Changes since v1:
- Updated properties separately for all compatibles to clarify usage
  of new properties and updates in usage of old properties for ADC5 Gen3.
- Avoided updating 'adc7' name to 'adc5 gen2' and just left a comment
  mentioning this convention.
- Used predefined channel IDs in individual PMIC channel definitions
  instead of numeric IDs.
- Addressed other comments from reviewers.

 .../bindings/iio/adc/qcom,spmi-adc5-gen3.yaml | 151 ++++++++++++++++++
 .../bindings/iio/adc/qcom,spmi-vadc.yaml      |   2 +
 .../bindings/mfd/qcom,spmi-pmic.yaml          |   1 +
 3 files changed, 154 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/qcom,spmi-adc5-gen3.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/qcom,spmi-adc5-gen3.yaml b/Documentation/devicetree/bindings/iio/adc/qcom,spmi-adc5-gen3.yaml
new file mode 100644
index 000000000000..149f4af8f4b8
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/qcom,spmi-adc5-gen3.yaml
@@ -0,0 +1,151 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/qcom,spmi-adc5-gen3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm's SPMI PMIC ADC5 Gen3
+
+maintainers:
+  - Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
+
+description: |
+  SPMI PMIC5 Gen3 voltage ADC (ADC) provides interface to clients to read
+  voltage. It is a 16-bit sigma-delta ADC. It also performs the same thermal
+  monitoring function as the existing ADC_TM devices.
+
+  The interface is implemented on SDAM (Shared Direct Access Memory) peripherals
+  on the master PMIC rather than a dedicated ADC peripheral. The number of PMIC
+  SDAM peripherals allocated for ADC is not correlated with the PMIC used, it is
+  programmed in FW (PBS) and is fixed per SOC, based on the SOC requirements.
+  All boards using a particular (SOC + master PMIC) combination will have the
+  same number of ADC SDAMs supported on that PMIC.
+
+properties:
+  compatible:
+    const: qcom,spmi-adc5-gen3
+
+  reg:
+    items:
+      - description: SDAM0 base address in the SPMI PMIC register map
+      - description: SDAM1 base address
+    minItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+  "#io-channel-cells":
+    const: 1
+
+  "#thermal-sensor-cells":
+    const: 1
+
+  interrupts:
+    items:
+      - description: SDAM0 end of conversion (EOC) interrupt
+      - description: SDAM1 EOC interrupt
+    minItems: 1
+
+patternProperties:
+  "^channel@[0-9a-f]+$":
+    type: object
+    unevaluatedProperties: false
+    $ref: /schemas/iio/adc/qcom,spmi-vadc-common.yaml
+    description:
+      Represents the external channels which are connected to the ADC.
+
+    properties:
+      qcom,decimation:
+        enum: [ 85, 340, 1360 ]
+        default: 1360
+
+      qcom,hw-settle-time:
+        enum: [ 15, 100, 200, 300, 400, 500, 600, 700,
+                1000, 2000, 4000, 8000, 16000, 32000, 64000, 128000 ]
+        default: 15
+
+      qcom,avg-samples:
+        enum: [ 1, 2, 4, 8, 16 ]
+        default: 1
+
+      qcom,adc-tm:
+        description:
+          ADC_TM is a threshold monitoring feature in HW which can be enabled
+          on any ADC channel, to trigger an IRQ for threshold violation. In
+          earlier ADC generations, it was implemented in a separate device
+          (documented in Documentation/devicetree/bindings/thermal/qcom-spmi-adc-tm5.yaml.)
+          In Gen3, this feature can be enabled in the same ADC device for any
+          channel and threshold monitoring and IRQ triggering are handled in FW
+          (PBS) instead of another dedicated HW block.
+          This property indicates ADC_TM monitoring is done on this channel.
+        type: boolean
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - "#io-channel-cells"
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    pmic {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      adc@9000 {
+        compatible = "qcom,spmi-adc5-gen3";
+        reg = <0x9000>, <0x9100>;
+        interrupts = <0x0 0x90 0x1 IRQ_TYPE_EDGE_RISING>,
+                      <0x0 0x91 0x1 IRQ_TYPE_EDGE_RISING>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        #io-channel-cells = <1>;
+        #thermal-sensor-cells = <1>;
+
+        /* PMK8550 Channel nodes */
+        channel@3 {
+          reg = <0x3>;
+          label = "pmk8550_die_temp";
+          qcom,pre-scaling = <1 1>;
+        };
+
+        channel@44 {
+          reg = <0x44>;
+          label = "pmk8550_xo_therm";
+          qcom,pre-scaling = <1 1>;
+          qcom,ratiometric;
+          qcom,hw-settle-time = <200>;
+          qcom,adc-tm;
+        };
+
+        /* PM8550 Channel nodes */
+        channel@103 {
+          reg = <0x103>;
+          label = "pm8550_die_temp";
+          qcom,pre-scaling = <1 1>;
+        };
+
+        /* PM8550B Channel nodes */
+        channel@78f {
+          reg = <0x78f>;
+          label = "pm8550b_vbat_sns_qbg";
+          qcom,pre-scaling = <1 3>;
+        };
+
+        /* PM8550VS_C Channel nodes */
+        channel@203 {
+          reg = <0x203>;
+          label = "pm8550vs_c_die_temp";
+          qcom,pre-scaling = <1 1>;
+        };
+      };
+    };
diff --git a/Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc.yaml b/Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc.yaml
index 16c80709a3ee..72188041e8b5 100644
--- a/Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/qcom,spmi-vadc.yaml
@@ -15,6 +15,8 @@ description: |
   voltage. The VADC is a 15-bit sigma-delta ADC.
   SPMI PMIC5/PMIC7 voltage ADC (ADC) provides interface to clients to read
   voltage. The VADC is a 16-bit sigma-delta ADC.
+  Note that PMIC7 ADC is the generation between PMIC5 and PMIC5 Gen3 ADC,
+  it can be considered like PMIC5 Gen2.
 
 properties:
   compatible:
diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 65c80e3b4500..cc5de26bbf57 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -129,6 +129,7 @@ patternProperties:
   "^adc@[0-9a-f]+$":
     type: object
     oneOf:
+      - $ref: /schemas/iio/adc/qcom,spmi-adc5-gen3.yaml#
       - $ref: /schemas/iio/adc/qcom,spmi-iadc.yaml#
       - $ref: /schemas/iio/adc/qcom,spmi-rradc.yaml#
       - $ref: /schemas/iio/adc/qcom,spmi-vadc.yaml#
-- 
2.25.1


