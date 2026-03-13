Return-Path: <devicetree+bounces-275247-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHRnIEoUtGn2gwAAu9opvQ
	(envelope-from <devicetree+bounces-275247-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:42:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0209E28419A
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:42:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A2BF13296762
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:27:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ECA93A5E6A;
	Fri, 13 Mar 2026 13:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R/Nb4dtS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hTVs/+pa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBEC3A5E69
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773408246; cv=none; b=n0OgQ9FgLVZ0HvyD4kHqB3B2ecYQymBlR+dLYdDSj4WHj5gv88mmpg8bJyRkYxtEaEO0ifplZMqz/wZcUhDbaa1mpj6hfAq/IfRcXvaXBwD6kQNUeriBjJfXuLpZhFLNmHoTCX6jeuof7uMZHGenXnkzN/fqNLi7NC9NctJqq4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773408246; c=relaxed/simple;
	bh=kDr+j1oVWPUgWXa/dPBHOsRuwPww2RWz8LJQX5idu+c=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=U6xbuSKKcqGPOiGPUA/o/oqjCexPGPAHlTxGcdZB4p54geWQcsBQ6ti9BQV//KO4LqI67tlSNijgqzo2MIDXugkfg76IR+jwRiEjyjSVAF8FAH+Jk1aMGtqiFz75E9puGu/qWtfYuWEKIC9dXv8yZcNznQP2pE4UGb9ogDbpUdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R/Nb4dtS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hTVs/+pa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DBtwh43229811
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:24:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=anSXy2yepQleBNwMcWE2mF
	7AgrGmTotFRFC5HrooifE=; b=R/Nb4dtS3njzSB+WiTttHqycZII8TNLWQzXjQe
	y+UMCSyIM/V3tbDugv8sJ3CYhGkF+jk5dWneYulrH0ciIrkyY/1qPwErFbagjKzE
	nwaoB4s+v0K+GjPiHfWfNVSfqilEqZ0Uy9R8pTlgYLuMegU4iQWYRih1H7opPWM6
	EITcSAMVskAAiQbv4OF23UI5W0longS4Yv0CdhL2EiFVogXXj8q70iRKGOF3EwbO
	X5LToHxVq3b6f4lcpNfzm5wtEdijsJiM89cIXSN7eRqE51tO5GJzLkNS1JGtcJSw
	cE5nk9Yk+TUKUc9JbU6iQOBNmi44Qhqr0snbvIXqjv8tXQsw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cv8n7j9vg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:24:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd83cfb36cso1496007185a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 06:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773408243; x=1774013043; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=anSXy2yepQleBNwMcWE2mF7AgrGmTotFRFC5HrooifE=;
        b=hTVs/+pabFy7FEFxO2NDl7DGFl1SFYRcBP127MX3BvArjmBxTnDMD47tJXBt00SSLo
         Y6tDSRFl2zEu9DfHHqyho8o24H0IgV4kyGBw/v8ofB59Ps9icppEP441pBKZtDBy3EiN
         2B2fo6syc1OTEdSqT89bKNDXdoKQ7TL1+KFJ/2v/NVG4idSkCQl57xRWH3CyIy69aX1y
         SyTGeZfcUoa83mmXr03YzA9am52acOzIAKZ0SA5rwtvSg9FcXAZN7/SXfnAoTK9obPf4
         ah6iTlnlZRr9bBkyeYx/G2PZN0Old1z9yk/VKSWN69hGhmDaj/A6pPFEp3dhOieS72sa
         1xIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773408243; x=1774013043;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=anSXy2yepQleBNwMcWE2mF7AgrGmTotFRFC5HrooifE=;
        b=iPX++9U2sEQQ2vN1kZ6gaEckwHHCmDJtKSwbeJhrqcWxAS00LMA13RctIR+kKdh0r6
         oh7HELcFnPYfsnYJ+z+XPiu9sb/pPucApie7OlxhX7pthNh5CidmpcW83SIh44AOzVqo
         TdDkRFK1/9TZ/+pcwfgY4FM6FoGs4h2RvicsGthK84jeEPyz88o0F/EjvBliryc2nkFm
         i80VZ5Uw28C+y9NVr2aLHFYLWae3td+YitFzoOzWsvSmeasMjnpfIzCMfLhJPGv6jJRr
         9nz88APfoCNuFr7g9hGaJ4SVGVElbqA1p9EFzi9btVJ2YXucRJaOvtrynSUPcrbb6oZl
         Oa0A==
X-Forwarded-Encrypted: i=1; AJvYcCXCRw3z+5i1kU7fz+vYfnrntd9LnqVEp0of83JhqIga5iPQK3EDVYBhLy71UeTBAptwN66lFXfJqzNG@vger.kernel.org
X-Gm-Message-State: AOJu0YzAlGAXCL9KYNhaS9Uk3WJz2WMDaX1r4B+mn5QdAYUDJ3IUodh7
	tayAfqzBP/pym6DEpRvYQdIoARXdHEQ4Ky277bbo0W34FLc/qrWn16ZW8G7KhlHHo3sHNijHjnA
	NIeuIBwIJKTQjOgGeCHHCSPUvfcVHr62f41k+VDWfTzDe1BssUBmD78QdzxwM4MN8
X-Gm-Gg: ATEYQzyX5w+aeNYN3b94PV8besoZDwaOPbkckXjWmBL0dB2ZTaVuy4rcnjTGDg+YENS
	MmsY2sWbLER52MzfJG0Y3/ojZjAh1sc7jGbtADuHO5QSIVoALDNW7EMsvRigaya8qgJH5gh2mTT
	shfjRARKZpVR/3q5UAf2mQCBn8CTZV/YkaL377mLaUXdGac8Q59+raCANddS4D5NpnaGog5/3FZ
	d0r1IPjhVJ9UZkSFxk4N1RiN7/DJsQY6fe0tehvK9voUsttnX0kQwBMN3DzlosA3XOdPJNIeY+t
	u3kazFucPwSnR+pYygtAfywfN4QF2qIqjqZM3DWKWjssEzeDbOz5Kmwqrbdf5QCkIeD6tQGhgNS
	rRlzQu4J9AGTXI8K78VCRL6DyCSg=
X-Received: by 2002:a05:620a:468d:b0:8cd:8734:cd17 with SMTP id af79cd13be357-8cdb5a41d2amr438972385a.6.1773408243232;
        Fri, 13 Mar 2026 06:24:03 -0700 (PDT)
X-Received: by 2002:a05:620a:468d:b0:8cd:8734:cd17 with SMTP id af79cd13be357-8cdb5a41d2amr438964585a.6.1773408242556;
        Fri, 13 Mar 2026 06:24:02 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe19b936sm20294793f8f.5.2026.03.13.06.24.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 06:24:01 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v2 0/3] arm64: dts: qcom: Add base support for Eliza SoC
 and its MTP board
Date: Fri, 13 Mar 2026 15:23:49 +0200
Message-Id: <20260313-eliza-base-dt-v2-0-bd91367d860d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOUPtGkC/4WSTW7CMBCFr4K87iD/Jjir3qNi4dhjcEWcECdRW
 8Td6wRKK0rVjaWR5r3veWZOJGEfMJFqdSI9TiGFNuaCP62I3Zu4Qwgu14RTXlDONOAhfBioTUJ
 wA2iuqdHSO6EVyZquRx/eFr+X7aVOY/2KdphNrh09HscMGi5t35yMXSicf1FCdCHuEpi+gdQ0I
 9DSCiaFt4VX1cTIz5g3ObuXJ9tA6UVZ1tb4Uopq4hdlNP+AQxywt22M+QeAXUpwEMC8pIwydIX
 Dm9W/IUafgBvDC+21LbmvJvFIKdjv+F0TYOOkrpkpmKPiD+mD/LYbfR43cLdRlpeqltxc57as0
 LZNE4ZqpaxGpTxarwWZF7cPaWj79+Uucv+8pytD3p3AxICCkrhBYbKDFM9tSuvjaA6z+To/ZHs
 +nz8BDiXXmmoCAAA=
X-Change-ID: 20260219-eliza-base-dt-9290a94fd395
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=3109;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=kDr+j1oVWPUgWXa/dPBHOsRuwPww2RWz8LJQX5idu+c=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBptA/s5L3GDA36ZtgPLuEoIJcRlf3lOn+DHXH8E
 y5MSfj8fEiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabQP7AAKCRAbX0TJAJUV
 VmS0EACRDvxKP6UZpNcihaqMNtkW0hL8xta4j20LDs4i+hRc8OP4Dy3yhi0rJ/EJITgpY7kX12S
 0g7cNoFHexAVq6gZUsNY2vi1ptKdFtHHcMOY5xVeBocqs3FJRs3P+/BOER3rd+p7K4BqRbvjDen
 jgnlkIjcXEoc2YYKId6RpQwcRGiTYHWVkf5lKpxLrFB2JvxU6i2JfX9sfrnyNkNrW4rEnhBsGSJ
 VktcUH6zXlR33vfaKuTQPRm3T+ig1cbugn66RMeX9UEUfFIpCjB7RhArMQIIo26LpTUh2o5Mqep
 S+rHkr2EzndACC35FnwCE+GmAgcWJPNHAWkpdkm4VcEt57VTN1MFzvGDX4agOiGNGs2rpfNKVqz
 0u6nU0ys+6Mk7mbsLVc0fDu4hamxdMCmvXJ6sHxSouDFxovtGJFYZfNd1GqJsMjrKJPl4gZQ9hQ
 TBMoE5k0LWu3JIzQRkHk/l+NKnI81cVDs2JdccN/DRL6ByvEWd/VBseLZBe12ZGcomOfpf/yihi
 dl4sItXkI/xLk68Ps6MEyktsebPd1wjRX+WqKjBH7gBxMYzoc2JdoRQQ0o7FtzvcEq/1B/XKoJE
 gqFtNZCbid713Gwbv63+J5bLUlrCSxztuIA6OaYR5tN65Z0QNBqbRH3jI6OILZnII6+vGmS8W8v
 MAKYGyE9RKpL16g==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: 3oqHeWx1CcymfNOjMiJqVe9eEDMqI85w
X-Proofpoint-GUID: 3oqHeWx1CcymfNOjMiJqVe9eEDMqI85w
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEwNiBTYWx0ZWRfX9B1M0L3O47d7
 exn00Iks1Nypt7R2O5vaNpzAuyv1r9SLV5r3F/u6v8xsccgMTUck4hur9gxzK7LlaS2gxGI7wAv
 Nys22uSSsjTQ7pWOG2NmjjpinY7ERnIkVw4PFywKM1B87+iXMKt4//VldHz7iJEWSS9fPi1LcA6
 LJhHKIkDuKqviIoDZBZDEQl+etRCSWkwB56y5DQpBSZd8mAaW7a5rjAIEjmWwFfokP3FwvJCKF3
 XpRx4f5Dz1DVzUf4aoHom/msmzxxk1Cl26ipwdzahNJvyH9H5nj8d5Jq2/6iuPSd7bTj5OSsu0R
 EjisNwvJCJl+2FBTzp+xwjVIHFuwyxqwIvAFv1aLiKiCgVDZXoOrEgRwVqQeQP6GuinqxfVoCQ0
 2ovsVQtYfOXebTxd6Zr/ZEA4Zt8vRrlanNyoX4FYyzP+oBAWX2PwYVWPJepoEpSRY0KOcahBg/9
 0tW8qzX4s29U9kPqqzw==
X-Authority-Analysis: v=2.4 cv=CpCys34D c=1 sm=1 tr=0 ts=69b40ff4 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=bC-a23v3AAAA:8 a=CnW29Pfj3VQRh9aCjlkA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130106
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,msgid.link:url,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275247-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0209E28419A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Qualcomm Eliza SoC comes in different flavors.

Full spec sheet for the mobile flavor is here:
https://www.qualcomm.com/content/dam/qcomm-martech/dm-assets/documents/Snapdragon-7-Gen-4-Mobile-Platform-Product-Brief.pdf

and for the IoT flavor is here:
https://docs.qualcomm.com/doc/87-93954-1/87-93954-1_REV_A_Qualcomm_Dragonwing_Q-7790_Processor_Product_Brief.pdf

The initial support is basic boot-to-shell with UFS and
debug UART, while describing cpu cores and clusters, with
cpufreq and cpuidle support, and all necessary basic resources
providers. More support will follow.

It includes support for the MTP board.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v2:
- Rebased on next-20260312.
- Dropped the dependencies patchsets that have been already merged.
- Re-worded all commits dropping clames that claims that could
  confuse folks about Eliza being a mobile SoC only.
- Moved the L3 cache node under L2, as suggested by Konrad.
- Flatten the cpu map as a single logical cluster, as suggested by
  Konrad.
- Fixed the phandle address for the qcom,dload-mode.
- Made the QUPv3 enabled by default in the dtsi.
- Added MCQ reg range to the UFSHC.
- Fixed the UFS opp table according to Konrad's suggestions.
- Fixed PDC reg range size.
- Switched the SPMI to multi-master approach.
- Fixed the size of the GIC ITS reg range.
- Dropped extra blank line from under the nsp_noc.
- Added comments for the GPIO reserved ranges, as suggested by Konrad.
- Added empty line under the uart14 compatible property, as Konrad
  suggested.
- Picked up Dmitry's R-b tag for the dtsi patch.
- Link to v1: https://patch.msgid.link/20260224-eliza-base-dt-v1-0-54e8e3a5fe43@oss.qualcomm.com

---
Abel Vesa (3):
      dt-bindings: arm: qcom: Document Eliza SoC and its MTP board
      arm64: dts: qcom: Introduce Eliza Soc base dtsi
      arm64: dts: qcom: eliza: Enable Eliza MTP board support

 Documentation/devicetree/bindings/arm/qcom.yaml |    5 +
 arch/arm64/boot/dts/qcom/Makefile               |    1 +
 arch/arm64/boot/dts/qcom/eliza-mtp.dts          |  407 +++++++
 arch/arm64/boot/dts/qcom/eliza.dtsi             | 1317 +++++++++++++++++++++++
 4 files changed, 1730 insertions(+)
---
base-commit: 5c9e55fecf9365890c64f14761a80f9413a3b1d1
change-id: 20260219-eliza-base-dt-9290a94fd395
prerequisite-change-id: 20260222-eliza-bindings-arm-smmu-07c3143fc6f5:v1
prerequisite-patch-id: 8c34f07d3453ec6329616ff14cea4cda79a7243c
prerequisite-change-id: 20260221-eliza-bindings-scm-7f377bcaf743:v2
prerequisite-patch-id: 568045701b63cc9875ed6efa488097d62466d995
prerequisite-change-id: 20260221-eliza-bindings-ufs-2aa269f9c72f:v3
prerequisite-patch-id: f6f6351821a625a2dbc7dc9b369875852f841b1d
prerequisite-change-id: 20260311-eliza-bindings-spmi-8d49b1a61d03:v3
prerequisite-patch-id: b09cc32d2059fd50bf18564de109f89211bfce2f
prerequisite-change-id: 20260222-eliza-bindings-cpufreq-2d85c275b42a:v1
prerequisite-patch-id: eea3bd7914a7522245f785e39fa9d718fde4c1cf

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


